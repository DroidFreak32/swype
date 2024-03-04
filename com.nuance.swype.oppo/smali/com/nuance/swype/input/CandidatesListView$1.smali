.class Lcom/nuance/swype/input/CandidatesListView$1;
.super Ljava/lang/Object;
.source "CandidatesListView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/CandidatesListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/CandidatesListView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nuance/swype/input/CandidatesListView$1;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$1;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-static {v0}, Lcom/nuance/swype/input/CandidatesListView;->access$000(Lcom/nuance/swype/input/CandidatesListView;)V

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
