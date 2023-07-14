.class Lcom/nuance/swype/input/settings/InputPrefs$11;
.super Ljava/lang/Object;
.source "InputPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/InputPrefs;->createColorPickerDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs$11;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 761
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs$11;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    const-string/jumbo v1, "pen_color"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$11;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/InputPrefs;->access$500(Lcom/nuance/swype/input/settings/InputPrefs;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/settings/InputPrefs;->access$800(Lcom/nuance/swype/input/settings/InputPrefs;Ljava/lang/String;I)V

    .line 762
    return-void
.end method
