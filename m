Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077053495E
	for <lists+kexec@lfdr.de>; Tue,  4 Jun 2019 15:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ssvSF/n8kiJmEbkT8qcOz1KKgIofPKLEaJWXzHsLKyI=; b=iHQck8qQII3KPS
	4XBZy8SYorDeuGT+0JO8gLQ4WhPiKi5eC/Azp25vY0KGnaoX8Fw3cDr1h2ac9DIp649qH7nXOarOM
	ka9jWaf2ylEz5qCF2MkJT1dBbB1wymEMJ2MZlU+erW6yefu1D8rZnvVXh6uhtQt66e2SduMf0xdVF
	jtjHbGWlqbn/f4KP/D58ayRFU9uGjNbuU8kABmav8iZM4Jff14PtPQbnZCnRzttyiODxIPuMImZgo
	nAMk0BNvs9twUgITwNXqEsveEF57WJTsbf87uwotZEIhxMJQ+DEDbLC6X7mvBtWP6j2SoUHWrAgYk
	8kOclh1NjqBGIkrh64Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9pG-0006Em-En; Tue, 04 Jun 2019 13:50:06 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9pD-0005Y9-34
 for kexec@lists.infradead.org; Tue, 04 Jun 2019 13:50:04 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B4CC5307D932;
 Tue,  4 Jun 2019 13:49:56 +0000 (UTC)
Received: from localhost (ovpn-12-57.pek2.redhat.com [10.72.12.57])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 24D955D9E5;
 Tue,  4 Jun 2019 13:49:54 +0000 (UTC)
Date: Tue, 4 Jun 2019 21:49:52 +0800
From: Baoquan He <bhe@redhat.com>
To: Thomas.Lendacky@amd.com
Subject: The current SME implementation fails kexec/kdump kernel booting.
Message-ID: <20190604134952.GC26891@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 04 Jun 2019 13:50:01 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_065003_157830_CF71F65E 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Tom,

Lianbo reported kdump kernel can't boot well with 'nokaslr' added, and
have to enable KASLR in kdump kernel to make it boot successfully. This
blocked his work on enabling sme for kexec/kdump. And on some machines
SME kernel can't boot in 1st kernel.

I checked code of SME implementation, and found out the root cause. The
above failures are caused by SME code, sme_encrypt_kernel(). In
sme_encrypt_kernel(), you get a 2M of encryption work area as intermediate
buffer to encrypt kernel in-place. And the work area is just after _end of
kernel.

This happens to work in 1st kernel. But it will fail kexec/kdump kernel
absolutely. Because we load realmode/kernel/initrd in kexec-tools from
top to down. In kexec-tools, realmode is put just after kernel image. If
KASLR enabled, kernel may be randomized to other position, then kdump
kernel can boot. However, if nokaslr specified, the 2M intermediate
encryption workarea will definitely stump into the following realmode,
and fail kexec/kdump kernel booting. 

I have hacked kexec-tools code to put real mode area 4M away from the
kernel image end, it works and confirm my finding. So the current SME
in-place encryption way is not only a kexec/kdump issue, but also an
issue in 1st kernel. Because KASLR could put kernel at the end of an
available memory region, how to make sure the next 2M intermediate
workarea must exist; if KASLR put kernel to be close to starting address
of any cmdline/initrd/setup_data, how to make sure the gap between them
must be larger than 2M.

Thanks
Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
