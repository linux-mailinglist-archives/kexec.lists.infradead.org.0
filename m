Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EF91529A4
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 12:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XheFpSrQBJaHT7MMhKbrCwdUfVQkbWFv5RCLARo+mxA=; b=c/A1X9ZL01Tt+Z
	pYKcuhjFs/6IpKcQuxq9XSNkPbARgJTw4jCgXdVehw30cgKYiu6iVek1Vm6A8Cb5PiJwmHDWJYW7a
	yk/gN4PcIsyC9ai0/nt69UWf6s5ect0qc1D8YzqKlNMWwm0G4Tc1jQZVZYoht8Mk7Ms0WzA7P84xm
	3LsbgerIY06JoPSRxRNmSiAfdO15X1JM0oFiHDcWEUVyTI7A6/of9Scis1xkb53gjPTTUB6xonpnF
	x254Fx2/G99gXOJ/9yGfiOXUY9nbc57G3bQDSuxcvNTk+8PJRTR1R6rbsJYRLeR3/BVeFueJn3ta9
	ps30EHuA2Vr+O5kqOsQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izIXA-0006Vq-2E; Wed, 05 Feb 2020 11:07:52 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izIX7-0006VV-9e
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 11:07:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id j15so806965pgm.6
 for <kexec@lists.infradead.org>; Wed, 05 Feb 2020 03:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=L6Gq18X94g9uiylf9X3urfBkcBlJnTY40OWqebofXxQ=;
 b=PmI+kq7dnuRDNGbAdL//xOu9iRIiDm/vC3Fk4dExvfWWxq597FO6gctGkjso02Mcm5
 MD2FGMwrFDm3CG8wlIJ79sqIDa+Otu0ScTI07M52p1QjJjvjsiCxr9J3ilaFgGHhrF+7
 2LbXh5JCWUdGYnRsr5qwfE+SHa+oQdBQHOF4g0BMxM7lCWx0W3d2HShDCvmwd8md1PV5
 CWMpGDh9o9v4h/2f/IEBDtV8phbpd02T85RRBFwf0hXU+iMREn6+vKXqa0vTbqLsi55T
 JscMNhVUozaz5R2Bond8gT7k/8J0Q1OiT6cilHrv5hLzNa9QtRcNPyRVWDLCkP513Knu
 gcmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=L6Gq18X94g9uiylf9X3urfBkcBlJnTY40OWqebofXxQ=;
 b=ckhb83xr0JnMpMxp+qntSWokxdzfwspBL6wONzj7ksrQLgM0GoXWv/Ls2ce2AEGof0
 bsebUTzUmEb229eok0Ps6xT9n7+PxhYHOwblkylwQhQVolGDRtQlw/IBJZeHfyUdqXL/
 rAg8ApP1eiCbffn4ihVCLHJ7kzrZFHcib56sSySwJYVryxkl37h54KevTQg64ljfp2nJ
 IqBIGHP4B6MOMNpXRNcfF6kVfCAM7dQhslx8hG6QNpjaPNZIodMl13s3u6MTBV6lk8J/
 54LhOevyksoPey0NV7Jwn3tLEYFKnixzeoYm3NpvGJRjx15erae4fUS4BM4IYwp0SXba
 3C2A==
X-Gm-Message-State: APjAAAWe2pxvJ2baEcMZqIo1/Aw0LDBVFzbqwVuCpZNK3BwvoNS2qQse
 zyxtxOubCn6GciWXauqLs2s=
X-Google-Smtp-Source: APXvYqwFAzf1zgsBrca5nJa7YG0i4kRv1JKUVvKUQZGhtEP47dp8RChltK3p9HOTw+aD0YqwRynuxg==
X-Received: by 2002:a63:211f:: with SMTP id h31mr34250918pgh.299.1580900867368; 
 Wed, 05 Feb 2020 03:07:47 -0800 (PST)
Received: from localhost ([2a00:79e1:abc:f604:6e29:95ff:fe2d:8f34])
 by smtp.gmail.com with ESMTPSA id v8sm27291885pfn.172.2020.02.05.03.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 03:07:46 -0800 (PST)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Wed, 5 Feb 2020 20:07:44 +0900
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200205110522.GA456@jagdpanzerIV.localdomain>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877e11h0ir.fsf@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_030749_339699_F08E9C59 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On (20/02/05 10:00), John Ogness wrote:
> On 2020-02-05, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
> >>>> So there is a General protection fault. That's the type of a
> >>>> problem that kills the boot for me as well (different backtrace,
> >>>> tho).
> >>> 
> >>> Do you have CONFIG_RELOCATABLE and CONFIG_RANDOMIZE_BASE (KASLR)
> >>> enabled?
> >> 
> >> Yes. These two options are enabled.
> >> 
> >> CONFIG_RELOCATABLE=y
> >> CONFIG_RANDOMIZE_BASE=y
> >
> > So KASLR kills the boot for me. So does KASAN.
> 
> Sergey, thanks for looking into this already!
> 

So I hacked the system a bit.

3BUG: KASAN: wild-memory-access in copy_data+0x129/0x220>
3Write of size 4 at addr 5a5a5a5a5a5a5a5a by task cat/474>
Call Trace:>
 dump_stack+0x76/0xa0>
 ? copy_data+0x129/0x220>
 __kasan_report.cold+0x5/0x3b>
 ? get_page_from_freelist+0x1224/0x1490>
 ? copy_data+0x129/0x220>
 copy_data+0x129/0x220>
 _prb_read_valid+0x1a0/0x330>
 ? prb_first_seq+0xe0/0xe0>
 ? __might_sleep+0x2f/0xd0>
 ? __zone_watermark_ok+0x180/0x180>
 ? ___might_sleep+0xbe/0xe0>
 prb_read_valid+0x4f/0x60>
 ? _prb_read_valid+0x330/0x330>
 devkmsg_read+0x12e/0x3d0>
 ? __mod_node_page_state+0x1a/0xa0>
 ? info_print_ext_header.constprop.0+0x120/0x120>
 ? __lru_cache_add+0x16c/0x190>
 ? __handle_mm_fault+0x1097/0x1f60>
 vfs_read+0xdc/0x200>
 ksys_read+0xa0/0x130>
 ? kernel_write+0xb0/0xb0>
 ? up_read+0x56/0x130>
 do_syscall_64+0xa0/0x520>
 ? syscall_return_slowpath+0x210/0x210>
 ? do_page_fault+0x399/0x4fa>
 entry_SYSCALL_64_after_hwframe+0x44/0xa9>
RIP: 0033:0x7ff5f39813f2>
Code: c0 e9 c2 fe ff ff 50 48 8d 3d 9a 0d 0a 00 e8 95 ed 01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24>
RSP: 002b:00007ffc47b3ee58 EFLAGS: 0000024>
c ORIG_RAX: 0000000000000000>
RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007ff5f39813f2>
RDX: 0000000000020000 RSI: 00007ff5f3588000 RDI: 0000000000000003>
RBP: 00007ff5f3588000 R08: 00007ff5f3587010 R09: 0000000000000000>
R10: 0000000000000022 R11: 0000000000000246 R12: 000055f9c8a81c00>
R13: 0000000000000003 R14: 0000000000020000 R15: 0000000000020000>

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
