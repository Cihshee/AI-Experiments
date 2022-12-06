import tkinter as tk
from tkinter import scrolledtext
from tkinter import messagebox
from Astar import State

class gui:
    # 初始化操作
    def __init__(self, window):
        self.win = window
        self.win.title("A*解决八数码问题-cyy20002475")
        # 定义窗口的宽高
        width = 800
        height = 600
        align_str = '%dx%d' % (width, height)
        window.geometry(align_str)

        # 设置标签
        Title = tk.Label(window, text="A*解决八数码问题", font=('宋体', 14), width=25, height=2)
        L1 = tk.Label(window, text="输入初始棋盘状态：", font=('宋体', 12), width=25, height=2)
        L2 = tk.Label(window, text="输入目标棋盘状态：", font=('宋体', 12), width=25, height=2)
        Title.grid(row=0, column=3)
        L1.grid(row=1, column=0)
        L2.grid(row=3, column=0)
        # 设置输入框
        self.e1 = tk.Entry(window, font=('宋体', 12), bd=3)
        self.e1.grid(row=2, column=0, pady=10)
        self.e2 = tk.Entry(window, font=('宋体', 12), bd=3)
        self.e2.grid(row=4, column=0, pady=10)

        # 设置按钮
        self.b1 = tk.Button(window, text="开始求解", width=15, height=2 )
        #,command=star.showInfo()
        self.b1.grid(row=6, column=0, padx=10, pady=10)

        self.b2 = tk.Button(window, text="导出过程", width=15, height=2,command=self.guiShow)
        self.b2.grid(row=7, column=0, padx=10, pady=10)

        # 结果展示
        self.t = scrolledtext.ScrolledText(window, width=60, height=30)
        self.t.place(x=300, y=80)


    def guiShow(self):
        with open('answer.txt') as f:
            for line in f:
                self.t.insert('end', line)