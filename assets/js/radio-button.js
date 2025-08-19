<script>
  window.onload = function() {
    if (window.location.hash) {
      const targetId = window.location.hash.substring(1); // Remove the '#'
      const radioInput = document.getElementById(targetId);
      if (radioInput && radioInput.type === 'radio') {
        radioInput.checked = true;
      }
    }
  };
</script>