.class Lcom/android/camera/module/FunModule$1;
.super Landroid/os/CountDownTimer;
.source "FunModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/FunModule;->updateRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/FunModule;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/FunModule$1;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/FunModule$1;->this$0:Lcom/android/camera/module/FunModule;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/FunModule;->stopVideoRecording(ZZ)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    long-to-float p1, p1

    iget-object p0, p0, Lcom/android/camera/module/FunModule$1;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {p0}, Lcom/android/camera/module/FunModule;->access$000(Lcom/android/camera/module/FunModule;)F

    move-result p0

    mul-float/2addr p1, p0

    float-to-long p0, p1

    const-wide/16 v0, 0x3b6

    add-long/2addr p0, v0

    const-wide/16 v0, 0x1c2

    sub-long/2addr p0, v0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xac

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method