program sum_n                                    ! 宣告主程式，名稱為 sum_n
  implicit none                                  ! 關閉隱式型別宣告，所有變數都必須明確宣告
  integer(kind=8) :: n, i, total                 ! 宣告 64 位元整數：n 為上限、i 為迴圈計數、total 為累加和
  write(*,'(A)', advance='no') 'Enter N: '       ! 在螢幕輸出提示文字，且不換行
  read(*,*) n                                    ! 從鍵盤讀入使用者輸入的 N
  if (n < 1) then                                ! 檢查 N 是否小於 1（不合法的輸入）
    write(*,'(A)') 'N must be a positive integer.' ! 輸出錯誤訊息
    stop 1                                       ! 以錯誤碼 1 結束程式
  end if                                         ! 結束 if 判斷區塊
  total = 0                                      ! 將累加和歸零
  do i = 1, n                                    ! 迴圈：i 從 1 跑到 n
    total = total + i                            ! 每次把 i 加進 total
  end do                                         ! 結束 do 迴圈
  write(*,'(A,I0,A,I0)') 'Sum of 1 to ', n, ' = ', total ! 輸出結果，I0 表示以最小寬度輸出整數
end program sum_n                                ! 主程式結束
