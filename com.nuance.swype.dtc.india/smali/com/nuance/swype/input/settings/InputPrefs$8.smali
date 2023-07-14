.class Lcom/nuance/swype/input/settings/InputPrefs$8;
.super Ljava/lang/Object;
.source "InputPrefs.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/InputPrefs;->createStrokeWidthDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefs;

.field final synthetic val$min:I

.field final synthetic val$unit:Ljava/lang/String;

.field final synthetic val$valueLongPress:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefs;ILandroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    iput p2, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->val$min:I

    iput-object p3, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->val$valueLongPress:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->val$unit:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 679
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    iget v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->val$min:I

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/InputPrefs;->access$102(Lcom/nuance/swype/input/settings/InputPrefs;I)I

    .line 680
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->val$valueLongPress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/InputPrefs;->access$100(Lcom/nuance/swype/input/settings/InputPrefs;)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v2, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->access$200(Lcom/nuance/swype/input/settings/InputPrefs;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$8;->val$unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 687
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 693
    return-void
.end method
