Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAD6367AC
	for <lists+kexec@lfdr.de>; Thu,  6 Jun 2019 00:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZCNUN+i7tADy2TcHkMiDvaEEZW7jhlhjGsQyH7KUZc=; b=QpsbDjA3zC7m7N
	j9bHrTnM13Ko08wkY/lhviXvW5W01WSE6nNloauP9te3Q+6UTDq9pHt/XGtOnb8SMujw86TdVMBTm
	f5BVtuZevaFyeEQ8wumNQ/kd8rKWjJuF1v8eQlg8sgRC+KPxTCCXOWhUAzfW9qpLKuZsNUxhD7zPh
	LQjG5LObH/9LCJhMHZ7cwZ+I+9dWE4fyeRvfQdg0xhTb0KbIwlOvUiwv8j97ORx4k7ANnLFB2739w
	p5DPet4B7RPHsXOkUmSIRYBEaGGbIZRyqnTxtW0SYzC2tUdCwXNWU+BGORZ5VxIKJaL7aVopftFpT
	d9/5egEQ4K7TT/Apptkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYerN-0007uY-6V; Wed, 05 Jun 2019 22:58:21 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYerJ-0007u9-KN
 for kexec@lists.infradead.org; Wed, 05 Jun 2019 22:58:19 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 67D883083392;
 Wed,  5 Jun 2019 22:58:00 +0000 (UTC)
Received: from localhost (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 20D6A4E6A7;
 Wed,  5 Jun 2019 22:57:56 +0000 (UTC)
Date: Thu, 6 Jun 2019 06:57:54 +0800
From: Baoquan He <bhe@redhat.com>
To: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
Subject: Re: The current SME implementation fails kexec/kdump kernel booting.
Message-ID: <20190605225754.GG26891@MiWiFi-R3L-srv>
References: <20190604134952.GC26891@MiWiFi-R3L-srv>
 <508c2853-dc4f-70a6-6fa8-97c950dc31c6@amd.com>
 <20190605005600.GF26891@MiWiFi-R3L-srv>
 <0d9fba9d-7bbe-a7c7-dfe4-696da0dfecc4@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d9fba9d-7bbe-a7c7-dfe4-696da0dfecc4@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 05 Jun 2019 22:58:06 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_155817_704887_B7CD7D50 
X-CRM114-Status: GOOD (  23.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: "dyoung@redhat.com x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>, lijiang@redhat.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/05/19 at 04:04pm, Lendacky, Thomas wrote:
> On 6/4/19 7:56 PM, Baoquan He wrote:
> > On 06/04/19 at 03:56pm, Lendacky, Thomas wrote:
> >> On 6/4/19 8:49 AM, Baoquan He wrote:
> >>> Hi Tom,
> >>>
> >>> Lianbo reported kdump kernel can't boot well with 'nokaslr' added, and
> >>> have to enable KASLR in kdump kernel to make it boot successfully. This
> >>> blocked his work on enabling sme for kexec/kdump. And on some machines
> >>> SME kernel can't boot in 1st kernel.
> >>>
> >>> I checked code of SME implementation, and found out the root cause. The
> >>> above failures are caused by SME code, sme_encrypt_kernel(). In
> >>> sme_encrypt_kernel(), you get a 2M of encryption work area as intermediate
> >>> buffer to encrypt kernel in-place. And the work area is just after _end of
> >>> kernel.
> >>
> >> I remember worrying about something like this back when I was testing the
> >> kexec support. I had come up with a patch to address it, but never got the
> >> time to test and submit it.  I've included it here if you'd like to test
> >> it (I haven't done run this patch in quite some time). If it works, we can
> >> think about submitting it.
> > 
> > Thanks for your quick response and making this patch, Tom.
> > 
> > Tested on a speedway machine, it entered into kernel, but failed in
> > below stage. Tested two times, always happened.
> 
> Is this the initial kernel boot or the kexec kernel boot?

It's kexec kernel booting.

> 
> It looks like this is related to the initrd/initramfs decryption. Not
> sure what could be happening there. I just tried the patch on my Naples
> system and a 5.2.0-rc3 kernel and have been able to repeatedly kexec boot
> a number of times so far.
> 
> Thanks,
> Tom
> 
> > 
> > 
> > [    4.978521] Freeing unused decrypted memory: 2040K
> > [    4.983800] Freeing unused kernel image memory: 2344K
> > [    4.988943] Write protecting the kernel read-only data: 18432k
> > [    4.995306] Freeing unused kernel image memory: 2012K
> > [    5.000488] Freeing unused kernel image memory: 256K
> > [    5.005540] Run /init as init process
> > [    5.009443] Kernel panic - not syncing: Attempted to kill init! exitcode=0x00007f00
> > [    5.017230] CPU: 0 PID: 1 Comm: init Not tainted 5.2.0-rc2+ #38
> > [    5.023251] Hardware name: AMD Corporation Speedway/Speedway, BIOS RSW1004B 10/18/2017
> > [    5.031299] Call Trace:
> > [    5.033793]  dump_stack+0x46/0x60
> > [    5.037169]  panic+0xfb/0x2cb
> > [    5.040191]  do_exit.cold.21+0x59/0x81
> > [    5.044004]  do_group_exit+0x3a/0xa0
> > [    5.047640]  __x64_sys_exit_group+0x14/0x20
> > [    5.051899]  do_syscall_64+0x55/0x1c0
> > [    5.055627]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > [    5.060764] RIP: 0033:0x7fa1b1fc9e2e
> > [    5.064404] Code: Bad RIP value.
> > [    5.067687] RSP: 002b:00007fffc5abb778 EFLAGS: 00000202 ORIG_RAX: 00000000000000e7
> > [    5.075296] RAX: ffffffffffffffda RBX: 00007fa1b1fd2528 RCX: 00007fa1b1fc9e2e
> > [    5.082625] RDX: 000000000000007f RSI: 000000000000003c RDI: 000000000000007f
> > [    5.089879] RBP: 00007fa1b21d8d00 R08: 00000000000000e7 R09: 00007fffc5abb688
> > [    5.097134] R10: 0000000000000000 R11: 0000000000000202 R12: 0000000000000002
> > [    5.104386] R13: 0000000000000001 R14: 00007fa1b21d8d40 R15: 00007fa1b21d8d30
> > [    5.111645] Kernel Offset: disabled
> > [    5.423002] Rebooting in 10 seconds..
> > [   15.429641] ACPI MEMORY or I/O RESET_REG.
> > 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
