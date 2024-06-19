export default function cuid() {
    const pad = (num: string | number, size: number) => ('000000000' + num).slice(-size);
    const randomBlock = () => Math.random().toString(36).slice(2, 10);
    const safeCounter = () => {
      let counter = 0;
      return () => {
        counter = counter === Number.MAX_SAFE_INTEGER ? 0 : counter + 1;
        return counter;
      };
    };
  
    const counter = safeCounter();
  
    const timestamp = Date.now();
    const counterBlock = pad(counter(), 4);
    const randomBlock1 = randomBlock();
    const randomBlock2 = randomBlock();
  
    return `c${timestamp}${counterBlock}${randomBlock1}${randomBlock2}`;
  }