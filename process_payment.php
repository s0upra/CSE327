<?php
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['emp_email'])) {
    $emp_email = $conn->real_escape_string($_POST['emp_email']);

    // Fetch employee payment details
    $emp_sql = "SELECT emp_name, bank_account_number FROM EMPLOYEE WHERE emp_email = '$emp_email'";
    $emp_result = $conn->query($emp_sql);
    $employee = $emp_result->fetch_assoc();

    // Placeholder for Bank API Integration
    /*
    // Example Bank API Payment Processing
    $bank_api_config = [
        'api_endpoint' => 'https://example-bank-api.com/transfer',
        'api_key' => 'YOUR_API_KEY_HERE',
        'account_details' => [
            'account_number' => $employee['bank_account_number'],
            'account_name' => $employee['emp_name'],
            // Predefined salary or fetch from another table
            'amount' => 5000.00, 
            'description' => 'Monthly Salary Payment'
        ]
    ];

    // Bank API Integration Example (pseudo-code)
    try {
        $bank_response = bankApiTransfer($bank_api_config);
        
        if ($bank_response['status'] == 'success') {
            // Update local payment status only if bank transfer succeeds
            $update_sql = "UPDATE EMPLOYEE 
                           SET paid_for_month = TRUE, 
                               last_payment_date = CURRENT_TIMESTAMP 
                           WHERE emp_email = '$emp_email'";
            $conn->query($update_sql);
            
            // Log payment transaction
            $log_sql = "INSERT INTO PAYMENT_LOG 
                        (emp_email, payment_amount, payment_date, transaction_id) 
                        VALUES 
                        ('$emp_email', 5000.00, CURRENT_TIMESTAMP, '{$bank_response['transaction_id']}')";
            $conn->query($log_sql);
            
            echo "Payment processed successfully via bank transfer!";
        } else {
            echo "Bank transfer failed: " . $bank_response['error_message'];
        }
    } catch (Exception $e) {
        echo "Payment processing error: " . $e->getMessage();
    }
    */

    // Default local payment processing without bank API
    $update_sql = "UPDATE EMPLOYEE SET paid_for_month = TRUE WHERE emp_email = '$emp_email'";
    
    if ($conn->query($update_sql) === TRUE) {
        echo "Payment processed successfully!";
    } else {
        echo "Error processing payment: " . $conn->error;
    }

    $conn->close();
} else {
    echo "Invalid request";
}

// Hypothetical bank API transfer function (would be implemented by actual bank API)
function bankApiTransfer($config) {
    // Simulated bank API transfer logic
    // In real-world scenario, this would make an actual API call
    return [
        'status' => 'success',
        'transaction_id' => 'TXN' . time(),
        'message' => 'Transfer completed'
    ];
}
?>