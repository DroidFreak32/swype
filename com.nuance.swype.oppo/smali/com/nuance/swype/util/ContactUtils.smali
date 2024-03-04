.class public final Lcom/nuance/swype/util/ContactUtils;
.super Ljava/lang/Object;
.source "ContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;
    }
.end annotation


# static fields
.field private static contactName:Ljava/lang/String;

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mContext:Landroid/content/Context;

.field private static queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

.field private static wordSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "ContactUtils"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102$6263c3eb()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302$16915f7f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/nuance/swype/util/ContactUtils;->wordSource:I

    return v0
.end method

.method static synthetic access$402$134621()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/nuance/swype/util/ContactUtils;->wordSource:I

    return v0
.end method

.method public static cancelQueryTask()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;->cancel(Z)Z

    .line 54
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    .line 55
    return-void
.end method

.method public static getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wdSource"    # I

    .prologue
    const/4 v2, 0x0

    .line 41
    sput-object p0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    .line 42
    sput-object p1, Lcom/nuance/swype/util/ContactUtils;->contactName:Ljava/lang/String;

    .line 43
    sput p2, Lcom/nuance/swype/util/ContactUtils;->wordSource:I

    .line 44
    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    invoke-direct {v0, v2}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;-><init>(B)V

    .line 46
    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    :cond_0
    return-void
.end method

.method public static getInfoFromPhoneBook(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 62
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v2

    .line 65
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v6, "contactNumber":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 71
    .local v7, "pCur":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "strNumber":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 74
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static resetQueryTask()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/util/ContactUtils;->queryTask:Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;

    .line 59
    return-void
.end method

.method public static showIntentOption$7555e5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 85
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 89
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    sget v5, Lcom/nuance/swype/input/R$string;->call:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    sget v4, Lcom/nuance/swype/input/R$string;->message:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x2

    sget v5, Lcom/nuance/swype/input/R$string;->remove_button:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 94
    .local v2, "items":[Ljava/lang/String;
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 95
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_0

    .line 98
    iget-object v4, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 105
    new-instance v4, Lcom/nuance/swype/util/ContactUtils$1;

    invoke-direct {v4}, Lcom/nuance/swype/util/ContactUtils$1;-><init>()V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    new-instance v4, Lcom/nuance/swype/util/ContactUtils$2;

    invoke-direct {v4, p2, p0, v1, p1}, Lcom/nuance/swype/util/ContactUtils$2;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/nuance/swype/input/IME;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 155
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 159
    iget-object v4, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 160
    iget-object v4, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
