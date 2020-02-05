Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF3E1528FD
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 11:19:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ix1s0MoTh54tCaU0kucQ797MMs2Xkh9vB4a0i4bvTP4=; b=MTQPpArPJU0r7U
	GJonVAD10r/tPttTOBJbib8xqlkkAGWgcAT63FtLjyC2xenaol2NtkPUVLm3QQLgvNy9vuwKE4hrI
	c6KoQAX9BxyjMMVEzMxKWFD1lUFbrH6M8JzaULMJ64e353WboN0gu0DTuH0aAGVfxZQPWcb8XFvkf
	iw9AmcqmeQ+8ph8deRdhe5yT4jNX8DLSiiyNnwW8vjp+Vp2dEEq9YxTCTlEL+Kcrq+xfOCMV0K2Kt
	tXlxOcjmaot0oCnQCK+23HaRw4VD4LdaCGYFK6pyO72psz2t8dDjx1SmKIZBBTKD9AtMM1Nt3T4lU
	r0zc2ut0tekVuFq0DJow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izHmF-0006DL-8N; Wed, 05 Feb 2020 10:19:23 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izHmB-0006CZ-DC
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 10:19:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580897958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uhG9+u+26CC0Y3oe69s3gSW9WPcu2HiE40iJD/rIxZs=;
 b=N6uQFYPswEzXIKycA70ggDJaUKfuGK3gpizWGNP1RTGdSFdKmFNu3gn0ohJzfIT5hZIIFD
 fjxhgKx55qfoG6PN96pv8pLAsz7N1JFmluzdc8+0NEYPWrgLqactwA8H9WayNgQnbZtjoN
 D0hOvUPgTDyyfuYocB5Plic4j75/TcQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-VvRhE14-OxqVkDRRag5dSg-1; Wed, 05 Feb 2020 05:19:14 -0500
X-MC-Unique: VvRhE14-OxqVkDRRag5dSg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92A2C2EDA;
 Wed,  5 Feb 2020 10:19:12 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-108.pek2.redhat.com
 [10.72.12.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 77823857AF;
 Wed,  5 Feb 2020 10:19:05 +0000 (UTC)
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
To: John Ogness <john.ogness@linutronix.de>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com> <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
From: lijiang <lijiang@redhat.com>
Message-ID: <cd7509a5-48fd-e652-90f4-1e0fe2311134@redhat.com>
Date: Wed, 5 Feb 2020 18:19:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <877e11h0ir.fsf@linutronix.de>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_021919_522445_F7237218 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> On 2020-02-05, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
>>>>> So there is a General protection fault. That's the type of a
>>>>> problem that kills the boot for me as well (different backtrace,
>>>>> tho).
>>>>
>>>> Do you have CONFIG_RELOCATABLE and CONFIG_RANDOMIZE_BASE (KASLR)
>>>> enabled?
>>>
>>> Yes. These two options are enabled.
>>>
>>> CONFIG_RELOCATABLE=y
>>> CONFIG_RANDOMIZE_BASE=y
>>
>> So KASLR kills the boot for me. So does KASAN.
> 
> Sergey, thanks for looking into this already!
> 
>> John, do you see any of these problems on your test machine?
> 
> For x86 I have only been using qemu. (For hardware tests I use arm64-smp
> in order to verify memory barriers.) With qemu-x86_64 I am unable to
> reproduce the problem.
> 
> Lianbo, thanks for the report. Can you share your boot args? Anything
> special in there (like log_buf_len=, earlyprintk, etc)?
> 
Thanks for your response. Here is my kernel command line:

Command line: BOOT_IMAGE=(hd0,msdos1)/vmlinuz-5.5.0-rc7+ root=/dev/mapper/intel--wildcatpass--07-root ro crashkernel=512M resume=/dev/mapper/intel--wildcatpass--07-swap rd.lvm.lv=intel-wildcatpass-07/root rd.lvm.lv=intel-wildcatpass-07/swap console=ttyS0,115200n81

BTW: Actually, I put the complete kernel log in my last email reply, you could check the attachment if needed.

> Also, could you share your CONFIG_LOG_* and CONFIG_PRINTK_* options?
> 
Sure. Please refer to it.

[root@intel-wildcatpass-07 linux]# grep -nr "CONFIG_LOG_" .config 
134:CONFIG_LOG_BUF_SHIFT=20
135:CONFIG_LOG_CPU_MAX_BUF_SHIFT=12

[root@intel-wildcatpass-07 linux]# grep -nr "CONFIG_PRINTK_" .config 
136:CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=13
207:CONFIG_PRINTK_NMI=y
7758:CONFIG_PRINTK_TIME=y
7759:# CONFIG_PRINTK_CALLER is not set

Do you have any suggestions about the size of CONFIG_LOG_* and CONFIG_PRINTK_* options by default?

Thanks.
Lianbo

> I will move to bare metal x86_64 and hopefully see it as well.
> 
> John
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
