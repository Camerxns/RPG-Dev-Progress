**FREE

// Dcl-S Name Char(10);
// Dcl-S Age Int(10);

// Dcl-S Money Packed(9:2); //xxxxxx.xx
// // Dcl-S Money Zoned(9:2); //Uses more memory xxxxxx.xx

// Dcl-S ShortName Varchar(10);

// Name = 'Cameron'; //"Cameron   "
// Age = 23;

// Money = 132.94;
// Money += 5;

// ShortName = 'Cam';

// Name = Name + 'Test';
// ShortName = ShortName + 'Test';

// Dsply ('Your name is ' + %TrimR(Name) + '.');
// Dsply ('Your ShortName is ' + %TrimR(ShortName) + '.');
// Dsply ('Your age is ' + %Char(Age) + '.');
// Dsply ('Your money count is ' + %Char(Money) + '.');


// LOOPS

// Dcl-S index Int(3);

// index = 0;

// Dow (index >= 5);
//   Dsply ('Hello World: ' + %Char(index));

//   index += 1;

// Enddo;

// For index = 0 to 4 by 2;

//     Dsply ('Hello World: ' + %Char(index));

// Endfor;

// For index = 4 downto 0;

//     Dsply ('Hello World: ' + %Char(index));

// Endfor;


// ARRAYS

// Dcl-s Names Char(10) Dim(5);

// Names(1) = 'Cam';
// Names(2) = 'Ace';
// Names(3) = 'Stormy';
// Names(4) = 'Mik';
// Names(5) = 'Moofs';

// For index = 1 to 5;

//     Dsply ('Hello ' + Names(index));
//     Names(index) = 'No Name';
//     Dsply ('Hello ' + Names(index));


// Endfor;


// DATA STRUCTURES

// Dcl-DS Person;
//     Name Char(10);
//     Age Int(3);
// End-DS;

// Dcl-DS Person Qualified;
//     Name Char(10);
//     Age Int(3);
// End-DS;

// Dcl-Ds MyPerson LikeDs(Person);

// MyPerson.Name = 'Dave';
// MyPerson.Age = 23;

// // When using Qualified
// Person.Name = 'Barry';
// Person.Age = 21;

// // When used without Qualified
// // Name = 'Barry';
// // Age = 21;

// Dsply MyPerson.Name;
// Dsply Person.Name;

// Dim Keyword

Dcl-S index Int(3);

Dcl-Ds Person Qualified Dim(3);
    Name Char(10);
    Age Int(3);
End-Ds;

Person(1).Name = 'Barry';
Person(1).Age = 21;

Person(2).Name = 'Ace';
Person(2).Age = 24;

Person(3).Name = 'Cam';
Person(3).Age = 23;

For index = 1 to 3;

    Dsply %TrimR(%TrimR(Person(index).Name) + ', ' + %Char(Person(index).Age));

Endfor;

Return;
