.class final enum Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$3;
.super Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;
.source "StatisticsEnabledEditState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;-><init>(Ljava/lang/String;ILcom/nuance/swype/stats/StatisticsEnabledEditState$1;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "Multitap toggle: "

    return-object v0
.end method
