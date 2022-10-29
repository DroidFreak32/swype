.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;
.super Ljava/lang/Object;
.source "PopupDialogThemeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

.field final synthetic val$mySku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->val$mySku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->buttonPressed:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$002(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Z)Z

    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->CANCEL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->val$mySku:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 177
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;
    invoke-static {v4}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 178
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I
    invoke-static {v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .line 179
    # getter for: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v6

    .line 174
    # invokes: Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordThemesPreview(Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 182
    return-void
.end method
