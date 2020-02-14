Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C554115D8BF
	for <lists+kexec@lfdr.de>; Fri, 14 Feb 2020 14:50:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+N+o3iCEMvDVebxmw6YF+p4I0RHqWQl08zoQiQDf9I=; b=bP+lWhdPRN3lGp
	EVbvyVnVFuyoX1O0PhYA5UpIZFp6BEhfDEMknmzyLE05H610YtdU4ReGRZuoKPB4wan/sweGaJQRk
	ucsle82BLB/mHso27jvVol33cfWjHnTR1AW2NMR1qxTD/KyCAtrjlwxids+yN2UGjhWIINHNh/xQR
	8eUmD+tECBtkkN0YXuuGsxYOCX48ddAEGiPjWtNNcMspVln78veRIb+NyDdSUkAz3dRYsKUr+DWk9
	BPsLlVyBcL8WeBed9aGkhuRLpj/z4cBmk8TYFsulnkAkEsoM8QGbhMEMYK+678QkvI556GghVdqtD
	gKL5T4Tg/kDIqSGgQojw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bMB-00046S-8n; Fri, 14 Feb 2020 13:50:11 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2bM7-0003Wf-PN
 for kexec@lists.infradead.org; Fri, 14 Feb 2020 13:50:09 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j2bM3-0006JK-SH; Fri, 14 Feb 2020 14:50:04 +0100
From: John Ogness <john.ogness@linutronix.de>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 2/2] printk: use the lockless ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <ccbe1383-a4a4-41f8-3330-972f03c97429@redhat.com>
Date: Fri, 14 Feb 2020 14:50:02 +0100
In-Reply-To: <ccbe1383-a4a4-41f8-3330-972f03c97429@redhat.com>
 (lijiang@redhat.com's message of "Fri, 14 Feb 2020 21:29:23 +0800")
Message-ID: <87zhdle0s5.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_055007_973851_31DD0C40 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Lianbo,

On 2020-02-14, lijiang <lijiang@redhat.com> wrote:
>> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
>> index 1ef6f75d92f1..d0d24ee1d1f4 100644
>> --- a/kernel/printk/printk.c
>> +++ b/kernel/printk/printk.c
>> @@ -1062,21 +928,16 @@ void log_buf_vmcoreinfo_setup(void)
>>  {
>>  	VMCOREINFO_SYMBOL(log_buf);
>>  	VMCOREINFO_SYMBOL(log_buf_len);
>
> I notice that the "prb"(printk tb static) symbol is not exported into
> vmcoreinfo as follows:
>
> +	VMCOREINFO_SYMBOL(prb);
>
> Should the "prb"(printk tb static) symbol be exported into vmcoreinfo?
> Otherwise, do you happen to know how to walk through the log_buf and
> get all kernel logs from vmcore?

You are correct. This will need to be exported as well so that the
descriptors can be accessed. (log_buf is only the pure human-readable
text.) I am currently hacking the crash tool to see exactly what needs
to be made available in order to access all the data of the ringbuffer.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
