<!DOCTYPE html>
<html lang="en">

<head>
    <?php
        $pageTitle = "Employee Payment"; 
        $cssFileName = "../css/admin.css";
        include "../head.php"; 
    ?> 
    <link rel="stylesheet" href="../css/sidebar.css">
    <link rel="stylesheet" href="../css/topbar.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    
    <?php 
        session_start();
        include '../php/config.php';

        $gender = $_SESSION['admin_gender'];
        $name = $_SESSION['admin_name'];

        // Fetch employee payment details with department info
        $sql = "SELECT E.emp_id, E.emp_name, E.emp_email, E.bank_account_number, 
                       D.dept_name, E.paid_for_month 
                FROM EMPLOYEE E 
                JOIN DEPARTMENT D ON E.dept_id = D.dept_id";
        $result = $conn->query($sql);
    ?>

    <div class="container">
        <!-- Navigation Bar -->
        <?php include 'adminSidebar.php' ?>
   
        <!-- Main Content-->
        <div class="main">
            <!-- Topbar -->
            <?php include 'adminTopbar.php' ?>

            <!-- Employee Payment Section -->
            <section id="employee">
                <div class="box">
                    <div class="title">
                        <p>Manage Employee Payments</p>
                    </div>
                    <table>
                        <tr>
                            <th>S.No</th>
                            <th>Department</th>
                            <th>Employee Name</th>
                            <th>Employee Email</th>
                            <th>Bank Account</th>
                            <th>Payment Status</th>
                            <th>Action</th>
                        </tr>
                        <?php
                            if ($result->num_rows > 0) {
                                $serialNo = 1;
                                while ($row = $result->fetch_assoc()) {
                                    $emp_email = $row["emp_email"];
                                    $paid_status = $row["paid_for_month"] ? "Paid" : "Not Paid";
                                    $button_text = $row["paid_for_month"] ? "Paid" : "Pay";
                                    $button_disabled = $row["paid_for_month"] ? "disabled" : "";

                                    echo "<tr>";
                                    echo "<td>" . $serialNo . "</td>";
                                    echo "<td>" . $row["dept_name"] . "</td>";
                                    echo "<td>" . $row["emp_name"] . "</td>";
                                    echo "<td>" . $emp_email . "</td>";
                                    echo "<td>" . $row["bank_account_number"] . "</td>";
                                    echo "<td>" . $paid_status . "</td>";
                                    echo "<td class='buttons'>";
                                    echo "<button onclick='processPayment(\"$emp_email\")' $button_disabled>$button_text</button>";
                                    echo "</td>";
                                    echo "</tr>";
                                    $serialNo++; 
                                }
                            } else {
                                echo "<tr><td colspan='7'>No employee records found</td></tr>";
                            }
                        ?>
                    </table>
                </div>
            </section>            
        </div>
    </div>

    <script>
    function processPayment(email) {
        if(confirm('Are you sure you want to process payment for this employee?')) {
            $.ajax({
                type: 'POST',
                url: '../php/process_payment.php',
                data: { emp_email: email },
                success: function(response) {
                    alert(response);
                    location.reload();
                },
                error: function() {
                    alert('Payment processing failed');
                }
            });
        }
    }
    </script>

    <script src="../js/adminDashboard.js"></script>    
</body>
</html>