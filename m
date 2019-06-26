Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517C25649C
	for <lists+kexec@lfdr.de>; Wed, 26 Jun 2019 10:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KZ4FLeZvcr12GRAs4V7VkzYJvTdGzwZdZwYlnzBrGc=; b=VQYIe5rAj8O1uk
	n/n6xmJjlIn8XmnAuLZt2caS0BNu5d5OgnWnrZKpao/0Rp6nSPpW9aD5MBLZYwfqFI1rgun3XLK59
	t2XZ35wDuqM02ny6rQKs/dZ9qRXYn/6Cpi08EdUwKR3gYMyDrit6LvXYOmIJS9WMCCbx1Z0903JDq
	9R5UdfgIFBqF/pUedloLhWcY/n3NMenAy4bPiNJpDdPNL/XsguvSuU6XujYFkVDEKeZIiStVHnMjq
	/YDs22Vrw3FmSNXL4CshcM+bh1BLG1EGzmB3uJXmaGX6C1d7hX/LUCnATh9uDrgY+F7eUclHoPDng
	0YGv7gOk/pGkxUfLk/0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3Iv-0003jy-IT; Wed, 26 Jun 2019 08:29:21 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3Is-0003jC-6o
 for kexec@lists.infradead.org; Wed, 26 Jun 2019 08:29:19 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BEB32D7809;
 Wed, 26 Jun 2019 08:29:12 +0000 (UTC)
Received: from localhost (ovpn-12-135.pek2.redhat.com [10.72.12.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D7FA60BE5;
 Wed, 26 Jun 2019 08:29:09 +0000 (UTC)
Date: Wed, 26 Jun 2019 16:29:07 +0800
From: Baoquan He <bhe@redhat.com>
To: airlied@redhat.com
Subject: Re: mgag200 fails kdump kernel booting
Message-ID: <20190626082907.GY24419@MiWiFi-R3L-srv>
References: <20190626081522.GX24419@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626081522.GX24419@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Wed, 26 Jun 2019 08:29:12 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_012918_273633_817862F1 
X-CRM114-Status: GOOD (  15.87  )
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
Cc: dyoung@redhat.com, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/26/19 at 04:15pm, Baoquan He wrote:
> Hi Dave,
> 
> We met an kdump kernel boot failure on a lenovo system. Kdump kernel
> failed to boot, but just reset to firmware to reboot system. And nothing
> is printed out.
> 
> The machine is a big server, with 6T memory and many cpu, its graphic
> driver module is mgag200.
> 
> When added 'earlyprintk=ttyS0' into kernel command line, it printed
> out only one line to console during kdump kernel booting:
>      KASLR disabled: 'nokaslr' on cmdline.
> 
> Then reset to firmware to reboot system.
> 
> By further code debugging, the failure happened in
> arch/x86/boot/compressed/misc.c, during kernel decompressing stage. It's
> triggered by the vga printing. As you can see, in __putstr() of
> arch/x86/boot/compressed/misc.c, the code checks if earlyprintk= is
> specified, and print out to the target. And no matter if earlyprintk= is
> added or not, it will print to VGA. And printing to VGA caused it to
> reset to firmware. That's why we see nothing when didn't specify
> earlyprintk=, but see only one line of printing about the 'KASLR
> disabled'.

Here I mean:
That's why we see nothing when didn't specify earlyprintk=, but see only
one line of printing about the 'KASLR disabled' message when
earlyprintk=ttyS0 added.

> 
> To confirm it's caused by VGA printing, I blacklist the mgag200 by
> writting it into /etc/modprobe.d/blacklist.conf. The kdump kernel can
> boot up successfully. And add 'nomodeset' can also make it work. So it's
> for sure mgag driver or related code have something wrong when booting
> code tries to re-init it.
> 
> This is the only case we ever see, tend to pursuit fix in mgag200 driver
> side. Any idea or suggestion? We have two machines to be able to
> reproduce it stablly.
> 
> Thanks
> Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
