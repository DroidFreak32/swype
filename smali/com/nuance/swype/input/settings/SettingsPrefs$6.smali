.class Lcom/nuance/swype/input/settings/SettingsPrefs$6;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createLongPressDurationDialog()Landroid/app/Dialog;
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

    .prologue
    .line 461
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iput p2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$6;->val$min:I

    iput-object p3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$6;->val$valueLongPress:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 466
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    mul-int/lit8 v1, p2, 0xa

    iget v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$6;->val$min:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$002(Lcom/nuance/swype/input/settings/SettingsPrefs;I)I

    .line 467
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$6;->val$valueLongPress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 474
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 480
    return-void
.end method
