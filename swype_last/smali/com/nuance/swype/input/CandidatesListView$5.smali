.class synthetic Lcom/nuance/swype/input/CandidatesListView$5;
.super Ljava/lang/Object;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$swype$input$CandidatesListView$Format:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1362
    invoke-static {}, Lcom/nuance/swype/input/CandidatesListView$Format;->values()[Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView$5;->$SwitchMap$com$nuance$swype$input$CandidatesListView$Format:[I

    :try_start_9
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$5;->$SwitchMap$com$nuance$swype$input$CandidatesListView$Format:[I

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->FIT_AS_MUCH:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$5;->$SwitchMap$com$nuance$swype$input$CandidatesListView$Format:[I

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
