.class synthetic Lcom/nuance/swype/input/KeyboardSwitcher$1;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

.field static final synthetic $SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 251
    invoke-static {}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->values()[Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    :try_start_9
    sget-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_75

    .line 130
    :goto_2a
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    :try_start_33
    sget-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_73

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_71

    :goto_49
    :try_start_49
    sget-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6f

    :goto_54
    :try_start_54
    sget-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM_PW:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_6b

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    goto :goto_6a

    :catch_6d
    move-exception v0

    goto :goto_5f

    :catch_6f
    move-exception v0

    goto :goto_54

    :catch_71
    move-exception v0

    goto :goto_49

    :catch_73
    move-exception v0

    goto :goto_3e

    :catch_75
    move-exception v0

    goto :goto_2a

    :catch_77
    move-exception v0

    goto :goto_1f

    :catch_79
    move-exception v0

    goto :goto_14
.end method
