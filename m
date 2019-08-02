Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434AD7E75C
	for <lists+kexec@lfdr.de>; Fri,  2 Aug 2019 03:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hTHr34Uv3pBwbF8Xru6XaRicng0R5pfgmyP0JjPhII=; b=dUoSw9IYnjQQ/C
	6C9N44RDVt7GN0360WfI6ncFQvOve6qrMY0/khz3JFxO382c8o0TDNArVM050yFA1VhUlwEQKH4Iw
	PLt6GR4hpShj+9C97B8wUKsQNDsDratXRrXvwg/8B2y3NOSA6yi9cnX0JzRjf456RGWeLPxzRIMrr
	HPk0skpIvhI9PRL3++1vNzPhDXEo6YUAS0gAZM5tRRpP+8mjtOwYwgu9i55MKA8o6/kKNjPxbMC75
	BKUH//YevRkJFmBgmygqyjiepZlcgIxQ5du+RNcqiBp8QO2dXJI8DIR9m9uJUAvz5tQEs+yhBnVzy
	dUmA1LsWMOc7aAUFpRSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htM11-000343-KM; Fri, 02 Aug 2019 01:05:51 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htM0w-00033T-SE
 for kexec@lists.infradead.org; Fri, 02 Aug 2019 01:05:48 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D9D1430C1953;
 Fri,  2 Aug 2019 01:05:45 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-80.pek2.redhat.com
 [10.72.12.80])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A06E19C4F;
 Fri,  2 Aug 2019 01:05:42 +0000 (UTC)
Date: Fri, 2 Aug 2019 09:05:38 +0800
From: Dave Young <dyoung@redhat.com>
To: lijiang <lijiang@redhat.com>
Subject: Re: crash: `kmem -s` reported "kmem: dma-kmalloc-512: slab:
 ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e" on a dumped vmcore
Message-ID: <20190802010538.GA2202@dhcp-128-65.nay.redhat.com>
References: <e640b50a-a962-8e56-33a2-2ba2eb76e813@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e640b50a-a962-8e56-33a2-2ba2eb76e813@redhat.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 02 Aug 2019 01:05:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_180546_952590_FBDA7DCD 
X-CRM114-Status: GOOD (  23.78  )
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
Cc: "Lendacky, Thomas" <thomas.lendacky@amd.com>, bhe@redhat.com,
 kexec@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dave Anderson <anderson@redhat.com>, ebiederm@xmission.com, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Add kexec cc list.
On 08/01/19 at 11:02pm, lijiang wrote:
> Hi, Tom
> 
> Recently, i ran into a problem about SME and used crash tool to check the vmcore as follow: 
> 
> crash> kmem -s | grep -i invalid
> kmem: dma-kmalloc-512: slab: ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e
> kmem: dma-kmalloc-512: slab: ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e
> 
> And the crash tool reported the above error, probably, the main reason is that kernel does not
> correctly handle the first 640k region when SME is enabled.
> 
> When SME is enabled, the kernel and initramfs images are loaded into the decrypted memory, and
> the backup area(first 640k) is also mapped as decrypted, but the first 640k data is copied to
> the backup area in purgatory(). Please refer to this file: arch/x86/purgatory/purgatory.c
> ......
> static int copy_backup_region(void)
> {
>         if (purgatory_backup_dest) {
>                 memcpy((void *)purgatory_backup_dest,
>                        (void *)purgatory_backup_src, purgatory_backup_sz);
>         }
>         return 0;
> }
> ......
> 
> arch/x86/kernel/machine_kexec_64.c
> ......
> machine_kexec_prepare()->
> arch_update_purgatory()->
> .....
> 
> Actually, the firs 640k area is encrypted in the first kernel when SME is enabled, here kernel
> copies the first 640k data to the backup area in purgatory(), because the backup area is mapped
> as decrypted, this copying operation makes that the first 640k data is decrypted(decoded) and
> saved to the backup area, but probably kernel can not aware of SME in purgatory(), which causes
> kernel mistakenly read out the first 640k.
> 
> In addition, i hacked kernel code as follow:
> 
> diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
> index 7bcc92add72c..a51631d36a7a 100644
> --- a/fs/proc/vmcore.c
> +++ b/fs/proc/vmcore.c
> @@ -377,6 +378,16 @@ static ssize_t __read_vmcore(char *buffer, size_t buflen, loff_t *fpos,
>                                             m->offset + m->size - *fpos,
>                                             buflen);
>                         start = m->paddr + *fpos - m->offset;
> +                       if (m->paddr == 0x73f60000) {//the backup area's start address:0x73f60000
> +                               tmp = read_from_oldmem(buffer, tsz, &start,
> +                                               userbuf, false);
> +                       } else
>                                 tmp = read_from_oldmem(buffer, tsz, &start,
>                                                userbuf, mem_encrypt_active());
>                         if (tmp < 0)
> 
> Here, i used the crash tool to check the vmcore, i can see that the backup area is decrypted,
> except for the dma-kmalloc-512. So i suspect that kernel did not correctly read out the first
> 640k data to backup area. Do you happen to know how to deal with the first 640k area in purgatory()
> when SME is enabled? Any idea?
> 
> BTW: I' curious the reason why the address of dma-kmalloc-512k always falls into the first 640k
> region, and i did not see the same issue on another machine.
> 
> Machine:
> Serial Number 	diesel-sys9079-0001
> Model           AMD Diesel (A0C)
> CPU             AMD EPYC 7601 32-Core Processor
> 
> 
> Background:
> On x86_64, the first 640k region is special because of some historical reasons. And kdump kernel will
> reuse the first 640k region, so kernel will back up(copy) the first 640k region to a backup area in
> purgatory(), in order not to rewrite the old region(640k) in kdump kernel, which makes sure that kdump
> can read out the old memory from vmcore.
> 
> 
> Thanks.
> Lianbo

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
