#include<iostream>
#include<fstream>
#include<string>
#include<vector>
#include <sstream>
#include <iterator>
using namespace std;

std::vector<std::string> seperateId()
{
	string inputFile = "C://Users//Aditi//Desktop//Network Science//Project//Dataset//amazon-meta.txt";
	ifstream ip;
	ip.open(inputFile);

	//string ouputBook = "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Book.txt";
	//ofstream opBook;
	//opBook.open(ouputBook);
	size_t posBook;

	ofstream outdata;
	outdata.open("C://Users//Aditi//Desktop//Network Science//Project//Dataset//VideoID.txt", ios::app);

	string line, str, idStr;
	size_t pos;
	std::vector<std::string> Id;

	if (ip.is_open())
	{
		while (getline(ip, line))
		{
			posBook = NULL;
			str = "\n";
			pos = line.find("Id");//6
			if (pos != string::npos && pos == 0)
			{
				cout << line << "\n";
				string str1 = line.erase(0, 6);

				str = line;
				do
				{
					getline(ip, line);
					str = str + "\n" + line;
					pos = line.find("group");
					if (pos != string::npos)
					{
						posBook = line.find("Video");
					}
					if (line == "")
						break;
				} while (pos == string::npos);

				if (posBook != NULL && posBook != string::npos)
				{
					//id
					Id.push_back(str1);
					idStr = str1 + "\n";
					outdata << idStr;
					/*opBook << "\n\n" << str << "\n";
					do
					{
						pos = line.find("reviews");
						getline(ip, line);
						opBook << line << "\n";
					} while (pos == string::npos);*/
				}
			}
		}
	}
	else
		cout << "Not able to open File";

	ip.close();/*
	opBook.close();*/
	outdata.close();

	return Id;
}
void main()
{
	string line;
	int count = 0;
	//std::vector<std::string> ID;
	//string inputBookId = "C://Users//Aditi//Desktop//Network Science//Project//Dataset//BookID.txt";
	//ifstream bookid;
	//bookid.open(inputBookId);
	//if (bookid.is_open())
	//{
	//	while (getline(bookid,line))
	//	{
	//		ID.push_back(line);
	//		cout << "\n"<<count++;
	//	}
	//}
	std::vector<std::string> ID = seperateId();
	//string inputFile = "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//amazon0601.txt";
	//ifstream ip;
	//ip.open(inputFile);
	//
	//string graph1="";
	//if (ip.is_open())
	//{
	//	while (getline(ip,line))
	//	{
	//		if(line[0]!='#'){
	//			std::istringstream buf(line);
	//			std::istream_iterator<std::string> beg(buf), end;

	//			std::vector<std::string> tokens(beg, end); // done!
	//			//string t1 = tokens.front();
	//			//string t2 = tokens.back();
	//			if (find(ID.begin(), ID.end(), tokens.front()) != ID.end())
	//			{
	//				if (find(ID.begin(), ID.end(), tokens.back()) != ID.end())
	//				{
	//					graph1 = graph1+line + "\n";
	//					cout << line + "\n";
	//				}
	//			}
	//		}
	//	}
	//}
	// ip.close();
	// cout << "END";
	// ofstream myfile;
	// myfile.open("C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//Book0601.txt");
	// myfile << graph1;
	// myfile.close();
}