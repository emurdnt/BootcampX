const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
  SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
  FROM assistance_requests
  JOIN teachers on assistance_requests.teacher_id = teachers.id 
  JOIN students on assistance_requests.student_id = students.id
  JOIN cohorts on students.cohort_id = cohorts.id
  WHERE cohorts.name = '${process.argv[2]}'
  ORDER BY teacher;
`)
.then(res => {
  // console.log(res.rows);
  res.rows.forEach(data => {
    console.log(`${data.cohort} : ${data.teacher}`);
  })
}).catch(err => console.error('query error', err.stack));