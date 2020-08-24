<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
$(function(){
    // ȸ�� ���� ó��
    $('#join-submit').click(function(e){
        e.preventDefault();
        if($("#inputName").val() ==''){
            alert('�̸��� �Է��ϼ���');
            $("#inputName").focus();
            return false;
        }

        var email = $('#InputEmail').val();
        if(email == ''){
            alert('�̸����� �Է��ϼ���');
            $("#InputEmail").focus();
            return false;
        } else {
            var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!emailRegex.test(email)) {
                alert('�̸��� �ּҰ� ��ȿ���� �ʽ��ϴ�. ex)abc@gmail.com');
                $("#inputEmail").focus();
                return false;
            }
        }

        if($("#inputPassword").val() ==''){
            alert('��й�ȣ�� �Է��ϼ���');
            $("#inputPassword").focus();
            return false;
        }

        if($("#inputPasswordCheck").val() ==''){
            alert('��й�ȣ�� �ٽ� �ѹ� �� �Է��ϼ���');
            $("#inputPasswordCheck").focus();
            return false;
        }
        
        if($("#inputPassword").val()!== $("#inputPasswordCheck").val()){
            alert('��й�ȣ�� �Ѵ� �����ϰ� �Է��ϼ���');
            return false;
        }

        if($("#inputMobile").val() ==''){
            alert('�޴��� ��ȣ�� �Է��ϼ���');
            $("#inputMobile").focus();
            return false;
        }
        
        if($("#agree").is(":checked") == false){
            alert('����� �����ϼž� �մϴ�');
            return false;      
        }
        
        $.ajax({
            url: 'register.php',
            type: 'POST',
            data: {
                name:$("#inputName").val(),
                userID:$('#InputEmail').val(),
                email:$('#InputEmail').val(),
                password:$('#inputPassword').val(),
                telNO:$("#inputtelNO").val(),
                mobileNO:$("#inputMobile").val()
            },
            dataType: "json",
            success: function (response) {
                if(response.result == 1){
                    alert('���� �Ϸ�');
                    location.replace('../index.php'); // ȭ�� ����
                } else if(response.result == 0){
                    alert('�̹� ���Ե� ���̵��Դϴ�');
                } else if(response.result == -2){
                    alert('�Էµ� ���� �����ϴ�');
                } else {
                    alert('����߿� ������ �߻��߽��ϴ�');
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                alert("arjax error : " + textStatus + "\n" + errorThrown);
            }
        });        
        
    });

});

</script>
</head>
<body>

</body>
</html>