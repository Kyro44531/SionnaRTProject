# JavaScript和Python常见的语法转换
---

### **1. 变量声明**

| JavaScript                | Python                |
|---------------------------|-----------------------|
| `let x = 10;`             | `x = 10`              |
| `const y = 20;`           | `y = 20`              |
| `var z = 30;`             | `z = 30`              |

- **`let` / `const`**：用于声明变量和常量。
- Python 中不需要像 JavaScript 一样显式声明变量类型，直接赋值即可。

---

### **2. 条件语句**

| JavaScript                | Python                |
|---------------------------|-----------------------|
| `if (x > 10) { ... }`      | `if x > 10: ...`      |
| `else if (x === 5) { ... }`| `elif x == 5: ...`    |
| `else { ... }`             | `else: ...`           |

- JavaScript 使用 `if`, `else if`, `else` 语句。
- Python 使用 `if`, `elif`, `else` 语句，注意没有括号，条件判断语句后面跟冒号。

---

### **3. 循环语句**

| JavaScript                         | Python                        |
|------------------------------------|-------------------------------|
| `for (let i = 0; i < n; i++) { ... }` | `for i in range(n): ...`      |
| `for (let item of array) { ... }`  | `for item in array: ...`      |
| `while (x > 0) { ... }`            | `while x > 0: ...`            |

- **`for` 循环**：JavaScript 的 `for` 循环与 Python 的 `for` 循环语法不同，Python 直接用 `range()` 或者直接迭代列表。
- **`while` 循环**：语法几乎相同。

---

### **4. 数组/列表**

| JavaScript                | Python                          |
|---------------------------|---------------------------------|
| `let arr = [1, 2, 3];`    | `arr = [1, 2, 3]`               |
| `arr.push(4);`            | `arr.append(4)`                 |
| `arr.unshift(4)`          | `arr.insert(0, 4) `             |
| `arr.pop();`              | `arr.pop()`                     |
| `arr.length`              | `len(arr)`                      |
| `arr.slice(1, 3)`         | `arr[1:3]`                      |
| `arr.filter(item => ...)` | `[item for item in arr if ...]` |

- **数组操作**：JavaScript 和 Python 在数组操作上非常相似，Python 使用列表（list），而 JavaScript 使用数组（array）。

---

### **5. 字符串**

| JavaScript                     | Python                        |
|---------------------------------|-------------------------------|
| `let str = 'Hello';`            | `str = 'Hello'`               |
| `str.length`                    | `len(str)`                    |
| `str.toUpperCase()`             | `str.upper()`                 |
| `str.toLowerCase()`             | `str.lower()`                 |
| `str.slice(1, 3)`               | `str[1:3]`                    |
| `str.includes('e')`             | `'e' in str`                  |

- 字符串在 JavaScript 和 Python 中都类似，但字符串方法有些差异。

---

### **6. 函数**

| JavaScript                               | Python                              |
|------------------------------------------|-------------------------------------|
| `function foo(x) { return x + 1; }`     | `def foo(x): return x + 1`         |
| `const bar = (x) => x + 1;`             | `bar = lambda x: x + 1`            |

- **函数声明**：JavaScript 使用 `function` 关键字来声明函数，而 Python 使用 `def`。
- **箭头函数**：JavaScript 支持箭头函数，Python 使用 `lambda` 表达式来定义匿名函数。

---

### **7. 对象/字典**

| JavaScript                         | Python                          |
|------------------------------------|---------------------------------|
| `let obj = { key: 'value' };`      | `obj = {'key': 'value'}`        |
| `obj.key`                          | `obj['key']`                    |
| `Object.keys(obj)`                 | `obj.keys()`                    |
| `Object.values(obj)`               | `obj.values()`                  |
| `obj.hasOwnProperty('key')`        | `'key' in obj`                  |

- **对象和字典**：JavaScript 使用对象 (`{}`)，Python 使用字典（`{}`）。
- 获取键、值：JavaScript 使用 `Object.keys()` 和 `Object.values()`，Python 使用 `dict.keys()` 和 `dict.values()`。

---

### **8. 异常处理**

| JavaScript                          | Python                              |
|-------------------------------------|-------------------------------------|
| `try { ... } catch (e) { ... }`     | `try: ... except Exception as e: ...` |
| `finally { ... }`                   | `finally: ...`                     |

- 异常处理的结构几乎相同，JavaScript 使用 `catch` 捕获错误，Python 使用 `except`。

---

### **9. 类和对象**

| JavaScript                               | Python                              |
|------------------------------------------|-------------------------------------|
| `class Person { constructor(name) { this.name = name; } }` | `class Person: def __init__(self, name): self.name = name` |
| `const p = new Person('Alice');`        | `p = Person('Alice')`              |

- **类的定义**：在 JavaScript 和 Python 中定义类的方式不同，Python 使用 `__init__` 方法来初始化对象。

---

### **10. 导入模块**

| JavaScript                           | Python                          |
|--------------------------------------|---------------------------------|
| `import { moduleName } from 'module';`| `import moduleName`             |
| `const { method } = require('module');`| `from moduleName import method` |

- **导入模块**：Python 使用 `import` 或 `from ... import ...` 来导入模块，JavaScript 使用 `import`（ES6模块）或者 `require`（CommonJS模块）。

---

### **11. 数学函数**

| JavaScript                          | Python                              |
|-------------------------------------|-------------------------------------|
| `Math.max(1, 2, 3)`                 | `max(1, 2, 3)`                     |
| `Math.min(1, 2, 3)`                 | `min(1, 2, 3)`                     |
| `Math.random()`                     | `random.random()`                  |
| `Math.floor(2.9)`                   | `math.floor(2.9)`                   |

- Python 使用 `math` 模块，而 JavaScript 使用 `Math` 对象来访问数学函数。

---

### **12. 定时器**

| JavaScript                           | Python                              |
|--------------------------------------|-------------------------------------|
| `setTimeout(() => {...}, 1000);`     | `time.sleep(1)`                     |
| `clearTimeout(timerId);`             | `# Python 没有直接类似的定时器功能` |

- Python 中没有直接类似 JavaScript 的定时器函数，但可以使用 `time.sleep()` 来暂停执行一段时间。