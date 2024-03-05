## Terraform state파일을 이용한 상태 관리 ##
- Terraform의 상태가 기록된 tfstate파일을 이용해 상태 관리
- 주소, 이름 등 민감정보가 들어있으므로 공개된 Github등에 업로드 X => 안전한 곳에 암호화하여 저장

## 작업 내용 ##
- Terraform의 상태 파일을 AWS DynamoDB와 S3를 통해 저장
- webserver, MySQL의 백엔드 예제 인프라 구축
- 로드밸런서를 이용하여 webserver에 대해 ASG(Auto Scaling Group) 구축
- 위의 작업들은 Terraform 코드를 이용해 웹 콘솔 작업 없이 코드를 통해서 프로비저닝

## 파일 레이아웃을 통한 격리 ##
- 작업 내용들을 파일 레이아웃(디렉토리)를 통해 서로 격리함
- service파트의 webserver & DB, tfstate파일 저장을 위한 global파트의 s3를 디렉토리로 구분하여 구축
- 디렉토리 구조
![image](https://github.com/AhnDo0/Terraform-test/assets/51705063/a60879f9-a079-4958-b3d7-c055bc39098b)

