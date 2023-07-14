.class final Lcom/android/support/v4/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/v4/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/v4/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/support/v4/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/v4/preference/PreferenceFragment;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/support/v4/preference/PreferenceFragment$1;->this$0:Lcom/android/support/v4/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment$1;->this$0:Lcom/android/support/v4/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/android/support/v4/preference/PreferenceFragment;->access$000(Lcom/android/support/v4/preference/PreferenceFragment;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
