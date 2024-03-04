.class synthetic Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;
.super Ljava/lang/Object;
.source "StandardTextRegionSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchLeftState:[I

.field static final synthetic $SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchRightState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->values()[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchRightState:[I

    :try_start_0
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchRightState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_TEXT:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchRightState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_NO_WS_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchRightState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchRightState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_WS:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    .line 116
    :goto_3
    invoke-static {}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->values()[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchLeftState:[I

    :try_start_4
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchLeftState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->start:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchLeftState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_initial_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchLeftState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchLeftState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
