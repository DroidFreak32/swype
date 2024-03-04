.class Lcom/nuance/swype/input/settings/FunctionBar$10;
.super Ljava/lang/Object;
.source "FunctionBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/FunctionBar;->createMaxItemDlg()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/FunctionBar;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/FunctionBar;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/nuance/swype/input/settings/FunctionBar$10;->this$0:Lcom/nuance/swype/input/settings/FunctionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 343
    return-void
.end method
