import cv2

cam = cv2.VideoCapture('http://10.1.20.213/live.asp?r=20171215')
while True:
    _, frame = cam.read()

    cv2.imshow('Camera on IP', frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        cv2.destroyAllWindows()
        cap.release()
        break