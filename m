Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007FA169D47
	for <lists+kexec@lfdr.de>; Mon, 24 Feb 2020 05:57:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17FA+Kv3OgV62WDEWQUxLAv6bE1pUrm0Y0HBi94w4io=; b=eDFIY5S5ZsT6k0
	IrRwRmC2SOxP4l4dh2EA5y+g30JYFNbG8eJ/YKNfTIMKpuFhrY+jQGDw4W5oWt4K7OEPy8U1LOs8u
	gCJ5OvW9Tun6g379j1kLY9hHqrWU4NN6JCU15rdNNtK8m0q4ETh7QiWNz+WDf56WPU+LyrBt2s/S5
	CiSsBlw42h6wTIHj89g217mMoXlukbZuOqcudrGo8o3WF1+11+yaKpHSnpCPTsXdpFATUL8D62utK
	7oHzPk40vMx3Xm2+b3HUQ+QsC3w/U3fEnNgUsqZv1wKi2L29CNcxf/TjBfCMR24jw8wMZHJwnPKX5
	4AJEdJdPM7TCdVA0/IUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j65nb-00077S-VL; Mon, 24 Feb 2020 04:56:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j65nV-000778-FS
 for kexec@lists.infradead.org; Mon, 24 Feb 2020 04:56:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582520206;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ma1EjT0/cgYKBYRBzJpsYw4qpXSIefQrEzpAraMKVJo=;
 b=XDv4ccoqCpJIhrWMOGxWSO5535BMM86t+Hq/wecROtYaRuS5pDIgGnIaT3/LYNHQqzzlfY
 xdfDiFPPqY7bGUQ8nSFOzjbPmBeIKiI7MO2c2V/PlN/SItt5UI0vqG3y1qTTDCf4NdckFo
 79YMn2qwDYgtIZra+rDKUjZYD45mzg0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-vRlxWOaAPRG_qk-QUfcrmg-1; Sun, 23 Feb 2020 23:56:37 -0500
X-MC-Unique: vRlxWOaAPRG_qk-QUfcrmg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1099800D54;
 Mon, 24 Feb 2020 04:56:35 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-13-44.pek2.redhat.com
 [10.72.13.44])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 02CB55D9C9;
 Mon, 24 Feb 2020 04:56:22 +0000 (UTC)
Date: Mon, 24 Feb 2020 12:56:18 +0800
From: Dave Young <dyoung@redhat.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
Message-ID: <20200224045618.GA16543@dhcp-128-65.nay.redhat.com>
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200222165631.GA213225@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222165631.GA213225@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_205649_595143_9D947CFF 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kairui Song <kasong@redhat.com>, Baoquan He <bhe@redhat.com>,
 linux-pci@vger.kernel.org, kexec@lists.infradead.org,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Randy Wright <rwright@hpe.com>,
 linux-kernel@vger.kernel.org, Deepa Dinamani <deepa.kernel@gmail.com>,
 Myron Stowe <myron.stowe@redhat.com>, Khalid Aziz <khalid@gonehiking.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Bjorn,
On 02/22/20 at 10:56am, Bjorn Helgaas wrote:
> [+cc Khalid, Deepa, Randy, Dave, Myron]
> 
> On Thu, Dec 26, 2019 at 03:21:18AM +0800, Kairui Song wrote:
> > There are reports about kdump hang upon reboot on some HPE machines,
> > kernel hanged when trying to shutdown a PCIe port, an uncorrectable
> > error occurred and crashed the system.
> 
> Did we ever make progress on this?  This definitely sounds like a
> problem that needs to be fixed, but I don't see a resolution here.
> 

I'm not familar with the PCI details,  but if this only adds a quirk for
kdump use and no other risks added then it should be good to have.

Or we can provide a kernel parameter for the quirk?  Then it is even
limited to only be effective when in-kdump && the-param-is-used

Anyway still prefer to people who know more about this area to evaluate
the risk.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
