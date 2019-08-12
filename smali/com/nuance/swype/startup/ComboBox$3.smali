.class final Lcom/nuance/swype/startup/ComboBox$3;
.super Ljava/lang/Object;
.source "ComboBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ComboBox;->showEdit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ComboBox;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ComboBox;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/nuance/swype/startup/ComboBox$3;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$3;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-static {v0}, Lcom/nuance/swype/startup/ComboBox;->access$000(Lcom/nuance/swype/startup/ComboBox;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 274
    return-void
.end method
