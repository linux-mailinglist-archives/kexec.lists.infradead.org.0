Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654AF1525AE
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 05:48:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMUjwTXmMiWaJbDtEwsHTCGGriUuaD60uMe+FZAw0eg=; b=bOYFUSCAxDBZpv
	9R/ge0n8eFyaXDnHKDQyl/3csAOe1u1FQf6Eop/x8NZB48wA4DLj3Fp8QchL0vJ0bwQs4NZu8V12G
	0yqts23RT8TSv16Efbn74qpDuuGbnSdS5guPTAMogkt5oMjcBQaMbifR1TtbRp6NwuzuhdCaF/SGw
	AG8j8Jq2AQG2ISDLoIEHYcm7w21IYviRb56YrzUxMyRLiWs9BdoIm9nV55mmpb5++/B8LqS9ml8/9
	Hzy9jhDzOpoc3vrsM0wjTQBrDKbol7gqO3qeSifsLDooYFkegb+OwJlPCLl9a7j1GmiuojJei/ROx
	ionvPmlJQIy6PuwVma5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izCcR-00062J-OW; Wed, 05 Feb 2020 04:48:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izCcO-00061s-87
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 04:48:53 +0000
Received: by mail-pf1-x442.google.com with SMTP id 185so536699pfv.3
 for <kexec@lists.infradead.org>; Tue, 04 Feb 2020 20:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZhwhXFLLIQr7DVIGzMKuSw5rQqYRmjKeHJ5MjcqT160=;
 b=fWaJC9jSvY4uEOCiYJdDkHdKoWKQNtYzVMAMvwQNnjlm/pmzTFpVTEtcCL6Ast/pgv
 AX9FUIi02T7oEhIaCVRZLau5W+ti4OccS6em7n2nPeBO+7wv1Ak8NfmuL9RxA2aJx39k
 eZE2vIW5dIJtWsuDMVXlpgUBflvjvJyjT5JiFa3ygh1kfcilsFWCVcWTFr4QRNJk2IbJ
 trPOEhPzOKFuli7CmQYQ0dUU6O1KsE/1CioUT5aIlnv1OebXfURckfnC8dsFiNJk2gK7
 o4bZTDlX7ZIiU8IiW6fM4cX+n61wdnTu7+djgOWvKz6iHmsj7A1dIAhid2uTydOPzx0d
 ogDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZhwhXFLLIQr7DVIGzMKuSw5rQqYRmjKeHJ5MjcqT160=;
 b=cBey3Jn4UqgMblTdePl5gEj7jPdh/vrnyWjN5M5nvd/QzssIGnDzfRmKXWSMsbOzgF
 UehnpKM29zmT/MjHiQ/bDeLCW09mLW28LhUKlzj1cZj8lQyxkcQkNDrq3Gnkl5OsKRez
 NQmai1djVbtb2Wh7Ma8dzpGW329dJr98tGrlg1tqL/S4zBW7U4hTKbw28LK4H/C5Dhac
 g3ELvMj37cLN2U9NapApYix6enquHo2kwPAHpb3FLCCfqBpPi4u+Irhp68x0ReyFicKW
 zgQe/WiUZ4aMq7d7Qq02g6jp3SeOfvXH8vlUMiHGn/tvOpuMQD6yyfA+5AHkdLjc85s+
 +LBQ==
X-Gm-Message-State: APjAAAXh+A2piF6SzU3iIqjOg2T5wYSb/ateRdGDLOlPD4rh264wiPmu
 b2yv9is3FyZWzA/NABun07aE+RtX
X-Google-Smtp-Source: APXvYqxrzxKcOq3aJDsD1kQQ78eR9+ySGuSeeWuRs81gkmuawDA4Y1++2D0EpLklAslxp0LyC1lIvw==
X-Received: by 2002:a63:d24b:: with SMTP id t11mr24931760pgi.443.1580878131245; 
 Tue, 04 Feb 2020 20:48:51 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id k63sm5252053pjb.10.2020.02.04.20.48.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 20:48:50 -0800 (PST)
Date: Wed, 5 Feb 2020 13:48:48 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200205044848.GH41358@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_204852_313329_5B987083 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky.work[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 John Ogness <john.ogness@linutronix.de>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On (20/02/05 12:25), lijiang wrote:
[..]
> [   42.111004] Kernel Offset: 0x1f000000 from 0xffffffff81000000 (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
> [   42.111005] general protection fault: 0000 [#1] SMP PTI
> [   42.111005] CPU: 15 PID: 1395 Comm: systemd-journal Not tainted 5.5.0-rc7+ #4
> [   42.111005] Hardware name: Intel Corporation S2600WTT/S2600WTT, BIOS SE5C610.86B.01.01.6024.071720181717 07/17/2018
> [   42.111006] RIP: 0010:copy_data+0xf2/0x1e0
> [   42.111006] Code: eb 08 49 83 c4 08 0f 84 8e 00 00 00 4c 89 74 24 08 4c 89 cd 41 89 d6 44 89 44 24 04 49 39 db 0f 87 c6 00 00 00 4d 85 c9 74 43 <41> c7 01 00 00 00 00 48 85 db 74 37 4c 89 e7 48 89 da 41 bf 01 00
> [   42.111007] RSP: 0018:ffffbbe207a7bd80 EFLAGS: 00010002
> [   42.111007] RAX: ffffa075d44ca000 RBX: 00000000000000a8 RCX: fffffffffff000b0
> [   42.111008] RDX: 00000000000000a8 RSI: 00000fffffffff01 RDI: ffffffffa1456e00
> [   42.111008] RBP: 0801364600307073 R08: 0000000000002000 R09: 0801364600307073
> [   42.111008] R10: fffffffffff00000 R11: 00000000000000a8 R12: ffffffffa1e98330
> [   42.111009] R13: 00000000d7efbe00 R14: 00000000000000a8 R15: 00000000ffffc000
> [   42.111009] FS:  00007f7c5642a980(0000) GS:ffffa075df5c0000(0000) knlGS:0000000000000000
> [   42.111010] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   42.111010] CR2: 00007ffe95f4c4c0 CR3: 000000084fbfc004 CR4: 00000000003606e0
> [   42.111011] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   42.111011] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   42.111012] Call Trace:
> [   42.111012]  _prb_read_valid+0xd8/0x190
> [   42.111012]  prb_read_valid+0x15/0x20
> [   42.111013]  devkmsg_read+0x9d/0x2a0
> [   42.111013]  vfs_read+0x91/0x140
> [   42.111013]  ksys_read+0x59/0xd0
> [   42.111014]  do_syscall_64+0x55/0x1b0
> [   42.111014]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [   42.111014] RIP: 0033:0x7f7c55740b62
> [   42.111015] Code: 94 20 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b6 0f 1f 80 00 00 00 00 f3 0f 1e fa 8b 05 e6 d8 20 00 85 c0 75 12 31 c0 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 41 54 49 89 d4 55 48 89
> [   42.111015] RSP: 002b:00007ffe95f4c4a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
> [   42.111016] RAX: ffffffffffffffda RBX: 00007ffe95f4e500 RCX: 00007f7c55740b62
> [   42.111016] RDX: 0000000000002000 RSI: 00007ffe95f4c4b0 RDI: 0000000000000008
> [   42.111017] RBP: 0000000000000000 R08: 0000000000000100 R09: 0000000000000003
> [   42.111017] R10: 0000000000000100 R11: 0000000000000246 R12: 00007ffe95f4c4b0

So there is a General protection fault. That's the type of a problem that
kills the boot for me as well (different backtrace, tho).

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
