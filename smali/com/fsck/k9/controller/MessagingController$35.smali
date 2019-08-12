.class final synthetic Lcom/fsck/k9/controller/MessagingController$35;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fsck$k9$Account$Searchable:[I

.field static final synthetic $SwitchMap$com$fsck$k9$controller$MessagingController$MemorizingState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5257
    invoke-static {}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->values()[Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$controller$MessagingController$MemorizingState:[I

    :try_start_0
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$controller$MessagingController$MemorizingState:[I

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    invoke-virtual {v1}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$controller$MessagingController$MemorizingState:[I

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    invoke-virtual {v1}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$controller$MessagingController$MemorizingState:[I

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FAILED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    invoke-virtual {v1}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 795
    :goto_2
    invoke-static {}, Lcom/fsck/k9/Account$Searchable;->values()[Lcom/fsck/k9/Account$Searchable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$Account$Searchable:[I

    :try_start_3
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$Account$Searchable:[I

    sget-object v1, Lcom/fsck/k9/Account$Searchable;->NONE:Lcom/fsck/k9/Account$Searchable;

    invoke-virtual {v1}, Lcom/fsck/k9/Account$Searchable;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$Account$Searchable:[I

    sget-object v1, Lcom/fsck/k9/Account$Searchable;->DISPLAYABLE:Lcom/fsck/k9/Account$Searchable;

    invoke-virtual {v1}, Lcom/fsck/k9/Account$Searchable;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
