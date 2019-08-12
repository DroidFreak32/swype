.class public Lcom/nuance/swype/input/ToolTips$TipTrigger;
.super Lcom/nuance/swype/input/AbstractTipTrigger;
.source "ToolTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TipTrigger"
.end annotation


# static fields
.field public static final DISPLAY_COUNT_SUFFIX:Ljava/lang/String; = "_DISPLAY_COUNT"

.field public static final TIP_COUNT_SUFFIX:Ljava/lang/String; = "_COUNT"

.field public static final TRIGGER_POINT_SUFFIX:Ljava/lang/String; = "_TRIGGER_POINT"

.field private static final maxDisplayCount:I = 0x3

.field private static final maxTipCount:I = 0x6


# instance fields
.field private final keyDisplayCount:Ljava/lang/String;

.field private final keyTipCount:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/swype/input/ToolTips;


# direct methods
.method protected constructor <init>(Lcom/nuance/swype/input/ToolTips;Ljava/lang/String;)V
    .locals 2
    .param p2, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->this$0:Lcom/nuance/swype/input/ToolTips;

    invoke-direct {p0}, Lcom/nuance/swype/input/AbstractTipTrigger;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DISPLAY_COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->keyDisplayCount:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->keyTipCount:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method protected getDisplayCount()I
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->this$0:Lcom/nuance/swype/input/ToolTips;

    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->keyDisplayCount:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/ToolTips;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getMaxDisplayCount()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x3

    return v0
.end method

.method protected getTriggerPoint()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x6

    return v0
.end method

.method protected incrementAndGetCount()I
    .locals 4

    .prologue
    .line 198
    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->this$0:Lcom/nuance/swype/input/ToolTips;

    iget-object v2, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->keyTipCount:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/ToolTips;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 199
    .local v0, "count":I
    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->this$0:Lcom/nuance/swype/input/ToolTips;

    iget-object v2, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->keyTipCount:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/ToolTips;->setInt(Ljava/lang/String;I)V

    .line 200
    return v0
.end method

.method protected incrementDisplayCount()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->this$0:Lcom/nuance/swype/input/ToolTips;

    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->keyDisplayCount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/swype/input/ToolTips$TipTrigger;->getDisplayCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/ToolTips;->setInt(Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method protected resetCount()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->this$0:Lcom/nuance/swype/input/ToolTips;

    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips$TipTrigger;->keyTipCount:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/ToolTips;->setInt(Ljava/lang/String;I)V

    .line 206
    return-void
.end method
