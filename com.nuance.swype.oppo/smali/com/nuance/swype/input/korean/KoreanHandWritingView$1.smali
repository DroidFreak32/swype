.class Lcom/nuance/swype/input/korean/KoreanHandWritingView$1;
.super Ljava/lang/Object;
.source "KoreanHandWritingView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/korean/KoreanHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/korean/KoreanHandWritingView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingView;)V

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
