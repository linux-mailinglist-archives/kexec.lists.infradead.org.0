Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50B11D19BA
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 17:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNa6LUwiivKJdSvLAaZHbgkY/ybOGYVwLn1n0y7X9FI=; b=OelaK1KXJIgKID
	Vy/mN1WX+8bvRgfCAKSKQwKEXktc3xOalKbrerV6HqRBS3IuNNXv2dvedQPZec9JRU8y2f++U8no+
	6cfs64Ah7VoW+FBMFZtaCiG04xM75AH7xU2OKUbkrE2lzUjr7NqGkrq2n5NZRwtYMgb/J6oxkMKkF
	c7K7sqg1vdKniLSt0soEitX8xFZCF2dvQuMCX3G6CwqpJa8Zukw9leTDrDM0MLBwsA7T5T9Za/Phj
	IQsSdQoa7PG5jzngZhmP799189BfDTRx67iKW60XaaQ0URdYqhDc1lrOFVRFxFeCOtQeOUlzuddJi
	pFTJFFDjszeZ6rOUKG9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtZD-0008Lr-3l; Wed, 13 May 2020 15:45:07 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtZ8-0007fw-DA
 for kexec@lists.infradead.org; Wed, 13 May 2020 15:45:04 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jYtYF-0002PP-RZ; Wed, 13 May 2020 09:44:07 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jYtYE-0000QY-AN; Wed, 13 May 2020 09:44:07 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Luis Chamberlain <mcgrof@kernel.org>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513152108.25669-3-mcgrof@kernel.org>
Date: Wed, 13 May 2020 10:40:31 -0500
In-Reply-To: <20200513152108.25669-3-mcgrof@kernel.org> (Luis Chamberlain's
 message of "Wed, 13 May 2020 15:21:07 +0000")
Message-ID: <87k11fonbk.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jYtYE-0000QY-AN; ; ; mid=<87k11fonbk.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18UC1Rfu06BcwNif7UO1o/2p3AxKZc4ZvA=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: ***
X-Spam-Status: No, score=3.2 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,LotsOfNums_01,T_TM2_M_HEADER_IN_MSG,XMNoVowels,
 XMSubLong autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4965]
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.7 XMSubLong Long Subject
 *  1.2 LotsOfNums_01 BODY: Lots of long strings of numbers
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa06 0; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: ; sa06 0; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ***;Luis Chamberlain <mcgrof@kernel.org>
X-Spam-Relay-Country: 
X-Spam-Timing: total 964 ms - load_scoreonly_sql: 0.05 (0.0%),
 signal_user_changed: 12 (1.2%), b_tie_ro: 10 (1.1%), parse: 1.04
 (0.1%), extract_message_metadata: 4.3 (0.4%), get_uri_detail_list: 2.2
 (0.2%), tests_pri_-1000: 4.2 (0.4%), tests_pri_-950: 1.34 (0.1%),
 tests_pri_-900: 1.09 (0.1%), tests_pri_-90: 281 (29.2%), check_bayes:
 277 (28.8%), b_tokenize: 31 (3.2%), b_tok_get_all: 13 (1.3%),
 b_comp_prob: 5.0 (0.5%), b_tok_touch_all: 222 (23.0%), b_finish: 2.6
 (0.3%), tests_pri_0: 637 (66.1%), check_dkim_signature: 0.86 (0.1%),
 check_dkim_adsp: 3.0 (0.3%), poll_dns_idle: 0.44 (0.0%), tests_pri_10:
 2.2 (0.2%), tests_pri_500: 11 (1.2%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 2/3] security: add symbol namespace for reading file data
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_084502_465554_63906F17 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: rafael@kernel.org, zohar@linux.ibm.com, dhowells@redhat.com,
 paul@paul-moore.com, nayna@linux.ibm.com, jmorris@namei.org,
 geert@linux-m68k.org, dan.carpenter@oracle.com, keescook@chromium.org,
 scott.branden@broadcom.com, selinux@vger.kernel.org, viro@zeniv.linux.org.uk,
 skhan@linuxfoundation.org, eparis@parisplace.org, tglx@linutronix.de,
 gregkh@linuxfoundation.org, stephen.smalley.work@gmail.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-integrity@vger.kernel.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Luis Chamberlain <mcgrof@kernel.org> writes:

> Certain symbols are not meant to be used by everybody, the security
> helpers for reading files directly is one such case. Use a symbol
> namespace for them.
>
> This will prevent abuse of use of these symbols in places they were
> not inteded to be used, and provides an easy way to audit where these
> types of operations happen as a whole.

Why not just remove the ability for the firmware loader to be a module?

Is there some important use case that requires the firmware loader
to be a module?

We already compile the code in by default.  So it is probably just
easier to remove the modular support all together.  Which would allow
the export of the security hooks to be removed as well.

Eric


> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>  drivers/base/firmware_loader/fallback.c | 1 +
>  fs/exec.c                               | 2 ++
>  kernel/kexec.c                          | 2 ++
>  kernel/module.c                         | 2 ++
>  security/security.c                     | 6 +++---
>  5 files changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/base/firmware_loader/fallback.c b/drivers/base/firmware_loader/fallback.c
> index d9ac7296205e..b088886dafda 100644
> --- a/drivers/base/firmware_loader/fallback.c
> +++ b/drivers/base/firmware_loader/fallback.c
> @@ -19,6 +19,7 @@
>   */
>  
>  MODULE_IMPORT_NS(FIRMWARE_LOADER_PRIVATE);
> +MODULE_IMPORT_NS(SECURITY_READ);
>  
>  extern struct firmware_fallback_config fw_fallback_config;
>  
> diff --git a/fs/exec.c b/fs/exec.c
> index 9791b9eef9ce..30bd800ab1d6 100644
> --- a/fs/exec.c
> +++ b/fs/exec.c
> @@ -72,6 +72,8 @@
>  
>  #include <trace/events/sched.h>
>  
> +MODULE_IMPORT_NS(SECURITY_READ);
> +
>  int suid_dumpable = 0;
>  
>  static LIST_HEAD(formats);
> diff --git a/kernel/kexec.c b/kernel/kexec.c
> index f977786fe498..8d572b41a157 100644
> --- a/kernel/kexec.c
> +++ b/kernel/kexec.c
> @@ -19,6 +19,8 @@
>  
>  #include "kexec_internal.h"
>  
> +MODULE_IMPORT_NS(SECURITY_READ);
> +
>  static int copy_user_segment_list(struct kimage *image,
>  				  unsigned long nr_segments,
>  				  struct kexec_segment __user *segments)
> diff --git a/kernel/module.c b/kernel/module.c
> index 80faaf2116dd..8973a463712e 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -59,6 +59,8 @@
>  #include <uapi/linux/module.h>
>  #include "module-internal.h"
>  
> +MODULE_IMPORT_NS(SECURITY_READ);
> +
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/module.h>
>  
> diff --git a/security/security.c b/security/security.c
> index 8ae66e4c370f..bdbd1fc5105a 100644
> --- a/security/security.c
> +++ b/security/security.c
> @@ -1654,7 +1654,7 @@ int security_kernel_read_file(struct file *file, enum kernel_read_file_id id)
>  		return ret;
>  	return ima_read_file(file, id);
>  }
> -EXPORT_SYMBOL_GPL(security_kernel_read_file);
> +EXPORT_SYMBOL_NS_GPL(security_kernel_read_file, SECURITY_READ);
>  
>  int security_kernel_post_read_file(struct file *file, char *buf, loff_t size,
>  				   enum kernel_read_file_id id)
> @@ -1666,7 +1666,7 @@ int security_kernel_post_read_file(struct file *file, char *buf, loff_t size,
>  		return ret;
>  	return ima_post_read_file(file, buf, size, id);
>  }
> -EXPORT_SYMBOL_GPL(security_kernel_post_read_file);
> +EXPORT_SYMBOL_NS_GPL(security_kernel_post_read_file, SECURITY_READ);
>  
>  int security_kernel_load_data(enum kernel_load_data_id id)
>  {
> @@ -1677,7 +1677,7 @@ int security_kernel_load_data(enum kernel_load_data_id id)
>  		return ret;
>  	return ima_load_data(id);
>  }
> -EXPORT_SYMBOL_GPL(security_kernel_load_data);
> +EXPORT_SYMBOL_NS_GPL(security_kernel_load_data, SECURITY_READ);
>  
>  int security_task_fix_setuid(struct cred *new, const struct cred *old,
>  			     int flags)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
