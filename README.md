## 모듈로 재사용 가능한 인프라 구성 ##
- 모듈은 재사용, 유지 관리 가능한 Terraform 코드를 작성하는 핵심 요소
- 여러 위치에서 재사용 가능한 모듈을 만들고, 이를 참조하는 방식을 통해 똑같은 코드를 여러 곳에 작성할 필요 없음

## 작업 내용 ##
- #1 에서 했던 webserver 환경 구축을 모듈로 분리
- 다른 환경(stage, prod디렉토리)에서는 webserver환경 구축을 모듈을 참조하도록 하는 terraform코드만 작성하면 됨
- 모듈을 이용하여 webserver인프라 프로비저닝
- 모듈 지역화(local)을 이용하여 변수를 locals.tf파일에 정의해두고, 이 변수를 모듈 전체에서 사용 가능하게함

## 디렉토리 구조 ##
- #1 작업내용에 이어 새로 생성한 module, prod와 stage/services의 webserver-cluster에서 작업함
  ![image](https://github.com/AhnDo0/Terraform-test/assets/51705063/56203608-95e2-458e-a01d-c94ab476e5d0)
