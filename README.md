# Employee Management System - Use Cases

## Actors
| Actor       | Description                                                                                  |
|-------------|----------------------------------------------------------------------------------------------|
| **Admin**   | Admin/Manager: Can manage departments, employees, tasks, payments, and view reports.         |
| **Employee**| Employee: Can view and update task statuses, and access their dashboard.                     |

## Admin Use Cases
| Use Case                  | Description                                                                                     |
|---------------------------|-------------------------------------------------------------------------------------------------|
| `adminLogin.php`          | Admin login functionality.                                                                     |
| `addDepartment.php`       | Add a new department to the system.                                                            |
| `addEmployee.php`         | Add a new employee to the system.                                                              |
| `adminDashboard.php`      | Admin's main dashboard interface.                                                              |
| `adminDepartment.php`     | Manage and view departments.                                                                   |
| `adminEmployee.php`       | Manage and view employees.                                                                     |
| `adminPayment.php`        | Access payment-related functions.                                                              |
| `adminSidebar.php`        | Sidebar for the admin interface.                                                               |
| `adminTask.php`           | Assign tasks to employees.                                                                     |
| `adminTaskReport.php`     | Generate task reports.                                                                         |
| `adminTaskStatus.php`     | Update and view task statuses.                                                                 |
| `adminTopbar.php`         | Top navigation bar for admin pages.                                                            |
| `deleteDepartment.php`    | Delete an existing department.                                                                 |
| `deleteEmployee.php`      | Delete an existing employee.                                                                   |
| `editEmployee.php`        | Edit employee details.                                                                         |
| `getDepartment.php`       | Fetch department details.                                                                      |
| `process_payment.php`     | Process employee payments.                                                                     |
| `logout.php`              | Logout functionality for admin.                                                                |

## Employee Use Cases
| Use Case                  | Description                                                                                     |
|---------------------------|-------------------------------------------------------------------------------------------------|
| `employeeLogin.php`       | Employee login functionality.                                                                  |
| `editPassword.php`        | Allows employees to change their password.                                                     |
| `employeeDashboard.php`   | Employee's main dashboard interface.                                                           |
| `employeeSidebar.php`     | Sidebar for the employee interface.                                                            |
| `employeeTask.php`        | View assigned tasks.                                                                           |
| `employeeTaskStatus.php`  | View and update task statuses.                                                                 |
| `employeeTopbar.php`      | Top navigation bar for employee pages.                                                         |
| `logout.php`              | Logout functionality for employees.                                                            |
| `viewTask.php`            | View details of individual tasks.                                                              |

## Shared Functionalities
| File                     | Description                                                                                     |
|--------------------------|-------------------------------------------------------------------------------------------------|
| `hashedPassword.php`     | Handles password hashing for secure storage.                                                    |
| `config.php`             | Application configuration and database connection settings.                                     |
| `contact.php`            | Contact page for the system.                                                                    |
| `process.php`            | Handles form submissions and general processing.                                                |
| `head.php`               | Common HTML header elements.                                                                    |
| `index.php`              | The landing page of the system.                                                                 |

## Relationships
| Source                   | Target                   | Description                                                                                |
|--------------------------|--------------------------|-------------------------------------------------------------------------------------------|
| `adminTask.php`          | `adminTaskReport.php`    | Admin generates reports based on tasks.                                                  |
| `adminTask.php`          | `adminTaskStatus.php`    | Admin updates the status of tasks.                                                       |
| `employeeTask.php`       | `employeeTaskStatus.php` | Employee views the status of their tasks.                                                |
| `process_payment.php`    | `adminEmployee.php`      | Admin processes payment for employees and views their records.                           | 
