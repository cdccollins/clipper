import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    swal({
      title: "Payment successful",
      text: "You are now the proud owner of a great video !",
      icon: "success",
      timer:10000
      // showConfirmationButton: false
    })
    event.preventDefault();


  });
  // document.querySelector('.swal-button').addEventListener('click', () => {
  // window.location.reload();
  //   event.preventDefault();
}


bindSweetAlertButtonDemo();
