.class Lcom/nuance/swype/input/settings/SettingsPrefs$17;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createRecognitionSpeedDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

.field final synthetic val$min:I

.field final synthetic val$valueLongPress:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;ILandroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 973
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$17;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iput p2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$17;->val$min:I

    iput-object p3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$17;->val$valueLongPress:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 978
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$17;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    mul-int/lit8 v2, p2, 0x32

    iget v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$17;->val$min:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$002(Lcom/nuance/swype/input/settings/SettingsPrefs;I)I

    .line 979
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$17;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 980
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$17;->val$valueLongPress:Landroid/widget/TextView;

    sget v2, Lcom/nuance/swype/input/R$string;->second:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$17;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 987
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 993
    return-void
.end method
