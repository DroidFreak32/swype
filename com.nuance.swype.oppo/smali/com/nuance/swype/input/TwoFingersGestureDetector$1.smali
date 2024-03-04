.class synthetic Lcom/nuance/swype/input/TwoFingersGestureDetector$1;
.super Ljava/lang/Object;
.source "TwoFingersGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/TwoFingersGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 228
    invoke-static {}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->values()[Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$1;->$SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I

    :try_start_0
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$1;->$SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->UP:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$1;->$SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->DOWN:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$1;->$SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->LEFT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$1;->$SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->RIGHT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$1;->$SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_PINCH:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$1;->$SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_SPREAD:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
