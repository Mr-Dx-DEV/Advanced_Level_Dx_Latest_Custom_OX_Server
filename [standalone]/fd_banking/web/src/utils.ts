export const waitFor = (ms: number) => new Promise((resolve) => setTimeout(resolve, ms))

export const resource = () => {
  //@ts-ignore
  return import.meta.env.DEV ? 'development' : GetParentResourceName()
}

export const fetched = async (
  url: string,
  opts: Record<string, any> = {},
  timeout: number = 5000
) => {
  // Create the AbortController instance, get AbortSignal
  const abortController = new AbortController()
  const { signal } = abortController

  // Make the fetch request
  const _fetchPromise = fetch(url, {
    ...opts,
    signal
  })

  // Start the timer
  const timer = setTimeout(() => abortController.abort(), timeout)

  // Await the fetch with a catch in case it's aborted which signals an error
  try {
    const result = await _fetchPromise
    clearTimeout(timer)
    return result
  } catch (e) {
    clearTimeout(timer)
    throw e
  }
}
