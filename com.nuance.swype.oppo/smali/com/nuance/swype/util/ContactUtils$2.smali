.class final Lcom/nuance/swype/util/ContactUtils$2;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/util/ContactUtils;->showIntentOption$7555e5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic val$context:Landroid/content/Context;

.field private synthetic val$ime:Lcom/nuance/swype/input/IME;

.field private synthetic val$name:Ljava/lang/String;

.field private synthetic val$number:Ljava/lang/String;

.field private synthetic val$wdSource:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/nuance/swype/input/IME;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$number:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$ime:Lcom/nuance/swype/input/IME;

    iput-object p4, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$name:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$wdSource:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 119
    packed-switch p2, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, "Dialuri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v0, "DialIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    iget-object v5, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "DialIntent":Landroid/content/Intent;
    .end local v1    # "Dialuri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 133
    :pswitch_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "smsto:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 134
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    .local v2, "MsgIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v5, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 137
    .end local v2    # "MsgIntent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v5

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v5, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 145
    .local v3, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v3, :cond_0

    .line 146
    iget-object v5, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$name:Ljava/lang/String;

    iget v6, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$wdSource:I

    invoke-virtual {v3, v5, v6}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
