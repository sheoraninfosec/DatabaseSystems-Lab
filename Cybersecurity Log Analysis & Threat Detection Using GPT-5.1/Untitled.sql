DROP DATABASE IF EXISTS AnomlyDetection;
CREATE DATABASE AnomlyDetection;
USE AnomlyDetection;

CREATE TABLE auth_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp DATETIME,
    username VARCHAR(50),
    src_ip VARCHAR(45),
    action VARCHAR(20)
);

CREATE TABLE firewall_events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp DATETIME,
    src_ip VARCHAR(45),
    dest_ip VARCHAR(45),
    action VARCHAR(50),
    rule_triggered VARCHAR(100)
);

CREATE TABLE network_traffic (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp DATETIME,
    src_ip VARCHAR(45),
    dest_ip VARCHAR(45),
    bytes_sent INT,
    bytes_received INT,
    protocol VARCHAR(10)
);

CREATE TABLE threat_intel (
    threat_id INT AUTO_INCREMENT PRIMARY KEY,
    ip_address VARCHAR(45),
    threat_type VARCHAR(50),
    severity VARCHAR(20)
);

INSERT INTO auth_logs (timestamp, username, src_ip, action) VALUES
('2025-12-01 10:22:12', 'admin', '192.168.1.50', 'FAILED'),
('2025-12-01 10:22:14', 'admin', '192.168.1.50', 'FAILED'),
('2025-12-01 10:22:16', 'admin', '192.168.1.50', 'FAILED'),
('2025-12-01 10:25:20', 'root', '203.0.113.45', 'FAILED'),
('2025-12-01 10:25:22', 'root', '203.0.113.45', 'FAILED'),
('2025-12-01 10:29:00', 'john', '10.0.0.25', 'SUCCESS');

INSERT INTO firewall_events (timestamp, src_ip, dest_ip, action, rule_triggered) VALUES
('2025-12-01 09:10:00', '203.0.113.45', '192.168.1.10', 'BLOCKED', 'Brute-force protection'),
('2025-12-01 09:12:30', '45.55.10.8', '192.168.1.10', 'BLOCKED', 'Port scan detected'),
('2025-12-01 11:00:00', '10.0.0.25', '8.8.8.8', 'ALLOWED', 'DNS request');

INSERT INTO threat_intel (ip_address, threat_type, severity) VALUES
('203.0.113.45', 'Brute-force attacker', 'High'),
('45.55.10.8', 'Port scanner', 'Medium');

# 7.4 High traffic anomalies
SELECT src_ip, SUM(bytes_sent + bytes_received) AS total_bytes
FROM network_traffic
GROUP BY src_ip
HAVING total_bytes > 5000000;



