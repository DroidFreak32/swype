.class Lcom/nuance/swype/input/settings/ThemesPrefs$5;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefs;->createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

.field final synthetic val$valueTextPortrait:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$5;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$5;->val$valueTextPortrait:Landroid/widget/TextView;

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
    .line 288
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$5;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    add-int/lit8 v1, p2, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$102(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F

    .line 289
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$5;->val$valueTextPortrait:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x8

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 297
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 303
    return-void
.end method
