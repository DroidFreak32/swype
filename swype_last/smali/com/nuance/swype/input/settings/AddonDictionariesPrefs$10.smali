.class synthetic Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$swype$input$settings$AddonDictionariesPrefs$DownloadableDictionary$Status:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 567
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->values()[Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;->$SwitchMap$com$nuance$swype$input$settings$AddonDictionariesPrefs$DownloadableDictionary$Status:[I

    :try_start_9
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;->$SwitchMap$com$nuance$swype$input$settings$AddonDictionariesPrefs$DownloadableDictionary$Status:[I

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;->$SwitchMap$com$nuance$swype$input$settings$AddonDictionariesPrefs$DownloadableDictionary$Status:[I

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->INSTALLED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;->$SwitchMap$com$nuance$swype$input$settings$AddonDictionariesPrefs$DownloadableDictionary$Status:[I

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->UPDATABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
