.class Lcom/nuance/swype/input/settings/SettingsPrefs$20;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

.field final synthetic val$valueTextLandscape:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$20;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$20;->val$valueTextLandscape:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$20;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    add-int/lit8 v1, p2, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$802(Lcom/nuance/swype/input/settings/SettingsPrefs;F)F

    .line 1087
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$20;->val$valueTextLandscape:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$20;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 1088
    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->percent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x8

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1096
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1102
    return-void
.end method
