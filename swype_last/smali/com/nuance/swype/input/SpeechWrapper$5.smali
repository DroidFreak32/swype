.class synthetic Lcom/nuance/swype/input/SpeechWrapper$5;
.super Ljava/lang/Object;
.source "SpeechWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/SpeechWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

.field static final synthetic $SwitchMap$com$nuance$swype$input$SpeechWrapper$RecognitionStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 709
    invoke-static {}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->values()[Lcom/nuance/speech/DictationEventListener$DictationEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    :try_start_9
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_c0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_bd

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Stopped:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_ba

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_UpdateResult:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_b7

    :goto_35
    :try_start_35
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_b5

    :goto_40
    :try_start_40
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Canceled:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_b3

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_b1

    :goto_56
    :try_start_56
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_AudioLevel:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_af

    :goto_62
    :try_start_62
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Language_Change:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_ad

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Session_Ended:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v1}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_ab

    .line 406
    :goto_7a
    invoke-static {}, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->values()[Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$swype$input$SpeechWrapper$RecognitionStatus:[I

    :try_start_83
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$swype$input$SpeechWrapper$RecognitionStatus:[I

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Canceled:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8e} :catch_a9

    :goto_8e
    :try_start_8e
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$swype$input$SpeechWrapper$RecognitionStatus:[I

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_99} :catch_a7

    :goto_99
    :try_start_99
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$swype$input$SpeechWrapper$RecognitionStatus:[I

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed_Connection:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a4} :catch_a5

    :goto_a4
    return-void

    :catch_a5
    move-exception v0

    goto :goto_a4

    :catch_a7
    move-exception v0

    goto :goto_99

    :catch_a9
    move-exception v0

    goto :goto_8e

    :catch_ab
    move-exception v0

    goto :goto_7a

    :catch_ad
    move-exception v0

    goto :goto_6e

    :catch_af
    move-exception v0

    goto :goto_62

    :catch_b1
    move-exception v0

    goto :goto_56

    :catch_b3
    move-exception v0

    goto :goto_4b

    :catch_b5
    move-exception v0

    goto :goto_40

    :catch_b7
    move-exception v0

    goto/16 :goto_35

    :catch_ba
    move-exception v0

    goto/16 :goto_2a

    :catch_bd
    move-exception v0

    goto/16 :goto_1f

    :catch_c0
    move-exception v0

    goto/16 :goto_14
.end method
