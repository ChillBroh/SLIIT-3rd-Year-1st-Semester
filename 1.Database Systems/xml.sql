create table demo(
id INTEGER,
exml XML
)

insert into demo values (1, '<Persons>
								<Person id="1">
									<Name>Ishara</Name>
									<Age>25</Age>
								</Person>
								<Person id="2">
									<Name>Sehan</Name>
									<Age>23</Age>
								</Person>
							</Persons>')

insert into demo values (2, '<Students>
								<Student id="1">
									<Name>Ishara</Name>
									<Age>25</Age>
								</Student>
								<Student id="2">
									<Name>Sehan</Name>
									<Age>23</Age>
								</Student>
							</Students>' )

select * from demo

select id, exml.query('/Persons/Person/Name')
from demo

select id, exml.query('/Persons/Person/@id="1"')
from demo

select id, exml.query('/Persons/Person[@id="1"]')
from demo

select id, exml.query('Persons/child::Person[attribute::id="1"]')
from demo

select id, exml.query('/Persons/Person[@id="1"]/Name')
from demo

select id, exml.query('/Persons/child::Person[attribute::id="1"]/Name')
from demo

select id, exml.query('//Person[@id="1"]')
from demo

select id, exml.query('descendant-or-self::Person[attribute::id="1"]')
from demo

select id, exml.query('/Persons/Person/Age[. gt 20]')
from demo

select id, exml.query('/Persons/Person[Age > 23]')
from demo

select id, exml.query('for $person in /Persons/Person
						return $person')
from demo

select id, exml.query('for $person in /Persons/Person
						let $name := $person/Name
						return $name')
from demo