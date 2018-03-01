import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    swal({
      title: "Payment successful",
      text: "You are now the proud owner of a great video !",
      icon: "success"
    })
    document.querySelector('.swal-button').addEventListener('click', () => {
      console.log('hello');
      window.location.reload();
    });
  });
}


bindSweetAlertButtonDemo();
