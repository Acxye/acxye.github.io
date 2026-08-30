document.querySelectorAll(".highlight").forEach((block) => {
  const button = document.createElement("button")
  button.className = "copy-code"
  button.textContent = "Copy"

  button.addEventListener("click", async () => {
    const code =
      block.querySelector("td:last-child pre code") ??
      block.querySelector("pre code")

    if (!code) return

    await navigator.clipboard.writeText(code.textContent)

    button.textContent = "Copied"

    setTimeout(() => {
      button.textContent = "Copy"
    }, 1000)
  })

  block.appendChild(button)
})
