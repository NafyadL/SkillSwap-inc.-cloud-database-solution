<!DOCTYPE html>
<html>
<head>
	<title>Welcome To SkillSwap DBMS</title>
	<style type="text/css">
		.form-style {
			font-size: 16px;
			margin: 20px;
		}
		.form-style label {
			display: block;
			margin-bottom: 5px;
		}
		.form-style input[type="text"] {
			width: 80%;
			padding: 5px;
			margin-bottom: 10px;
			font-size: 16px;
		}
		.form-style input[type="submit"] {
			padding: 10px;
			background-color: #4CAF50;
			color: white;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			font-size: 16px;
		}
		table {
			border-collapse: collapse;
			width: 100%;
			margin-top: 20px;
			font-size: 16px;
		}
		table th, table td {
			border: 1px solid #ddd;
			padding: 8px;
			text-align: left;
		}
		table th {
			background-color: #4CAF50;
			color: white;
		}
	</style>
</head>
<body>

	<?php
	// Reading configuration file
	include_once('config.php');

	// Establishing database connection
	$conn = mysqli_connect($config['servername'], $config['username'], $config['password'], $config['database']);

	// Check connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

	// Defining a function to run query and return result
	function run_query($conn, $query) {
		$result = mysqli_query($conn, $query);
		if (mysqli_num_rows($result) > 0) {
			$header = array();
			$rows = array();

			// Use first row as header
			$header = mysqli_fetch_assoc($result);

			// Store remaining rows in array
			while ($row = mysqli_fetch_assoc($result)) {
				$rows[] = $row;
			}
			return array('header' => $header, 'rows' => $rows);
		} else {
			return array('header' => array(), 'rows' => array());
		}
	}

	// Initializing variable to hold query string
	$query = "";

	if (isset($_POST['submit'])) {
		// Getting query string from user input
		$query = $_POST['query'];

		// Running custom query
		$result = run_query($conn, $query);
		$header = $result['header'];
		$rows = $result['rows'];
	}
	?>

	<!-- Title -->
	<h1 style="text-align: center;">Welcome to SkillSwap DBMS</h1>
	<br>

	<!-- HTML form to get user query -->
	<form class="form-style" method="POST" action="">
		<label for="query">Please enter query to get started:</label>
		<input type="text" id="query" name="query" value="<?php echo $query; ?>"><br>
		<input type="submit" name="submit" value="Submit">
	</form>

	<!-- HTML table to display results -->
	<table>
		<thead>
			<tr>
				<?php foreach ($header as $key => $value) { ?>
					<th><?php echo $key; ?></th>
				<?php } ?>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($rows as $row) { ?>
				<tr>
					<?php foreach ($row as $key => $value) { ?>
						<td><?php echo $value; ?></td>
					<?php } ?>
				</tr>
			<?php } ?>
		</tbody>
	</table>

</body>
</html>
