cd ..\..

echo ���������� ��������� ����������, ���������� ��������� 1 ���

git config --global user.name NEFUmasters
git config --global user.email study.svfu@gmail.com

echo ������� ������� ���� ����� ������
git add -A

git commit -a -m "comething new"

echo ���������� �������, ���� ��������� �������� � ��������� �����������

git push origin master

echo ���������� ��� ��������� �� ���������� ����������� � ��������� �������

git pull origin master

