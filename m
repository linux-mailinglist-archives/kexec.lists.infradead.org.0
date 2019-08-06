Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9195982E37
	for <lists+kexec@lfdr.de>; Tue,  6 Aug 2019 10:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDtHLqWq7x5EIE05weu3sGgWMkLRQMXi3Gg2kP3hIMY=; b=WZelTftKa2Ntv4
	1qbBzIXlmYCbjPn8ymi7kY6LG2NEjxYuXHhtj4116K7OHDNtEBmi+nXMtCaFt95+Z6mJnSfyvpa2p
	t0sid1pIGw1tvA1I63X1TCelwq5XOG5NGr+8qdN/d6+Vop1tde2R1axaKdOQeJvVhH4XiV2h3QyUN
	vQBdBZjwOD22DLqf67Hc7Iiv8ljg8kEfd6YGw2OD2kVijdTOIE6t6fUh4hLdOhWik/Pu6ZvTGRh2S
	ixceUb896LF3t4++cJ19AwyRj5mkQHMdI6iODP3nVzhit6fY7X5KwmMTEHSBcMoVUq9si3vCwpO+i
	mhtDUfnnK/CfOsuxBPyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvGY-0006ey-JX; Tue, 06 Aug 2019 08:56:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvGV-0006ec-DZ
 for kexec@lists.infradead.org; Tue, 06 Aug 2019 08:56:20 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C9EA730017A3;
 Tue,  6 Aug 2019 08:56:18 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-177.pek2.redhat.com
 [10.72.12.177])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FBCD5C1D8;
 Tue,  6 Aug 2019 08:56:15 +0000 (UTC)
Date: Tue, 6 Aug 2019 16:56:11 +0800
From: Dave Young <dyoung@redhat.com>
To: Borislav Petkov <bp@suse.de>
Subject: Re: [LKP] [x86/boot] 5b51ae969e: kexec boot failed
Message-ID: <20190806085611.GA2671@dhcp-128-65.nay.redhat.com>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
 <20190802093024.GB30710@zn.tnic>
 <0f817336-2d87-2110-13c0-e0a417d70e90@intel.com>
 <20190805130221.GA18887@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805130221.GA18887@zn.tnic>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 06 Aug 2019 08:56:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_015619_474302_D21A8D59 
X-CRM114-Status: GOOD (  13.42  )
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
Cc: x86@kernel.org, Kairui Song <kasong@redhat.com>,
 Baoquan He <bhe@redhat.com>, "Chen, Rong A" <rong.a.chen@intel.com>,
 Chao Fan <fanc.fnst@cn.fujitsu.com>, kexec@lists.infradead.org,
 Jun'ichi Nomura <j-nomura@ce.jp.nec.com>, lkp@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/05/19 at 03:02pm, Borislav Petkov wrote:
> On Mon, Aug 05, 2019 at 07:49:54PM +0800, Chen, Rong A wrote:
> > We use the following command to boot a new kernel:
> > kexec --noefi -l /opt/rootfs/tmp/pkg/linux/x86_64-rhel-7.6/gcc-7/5b51ae969e3d8ab0134ee3c98a769ad6d2cc2e24/vmlinuz-5.2.0-rc3-00004-g5b51ae969e3d8a
> > --initrd=/opt/rootfs/tmp/initrd-concatenated
> 
> And this "concatenated" initrd, how do you generate that?
> 
> FWIW, trying this in a vm doesn't seem to work because of EFI even though
> --noefi is supplied on the cmdline:
> 
> $ kexec --noefi -l /mnt/tmp/bzImage
> Unknown type (Reserved) while parsing /sys/firmware/memmap/5/type. Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/1/type. Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/6/type. Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/4/type. Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/2/type. Please report this as bug. Using RANGE_RESERVED now.

These warning messages should have been fixed in latest kexec-tools
since 2017.  e820 (/proc/iomem) previously used "reserved", later
changed to "Reserved" thus kexec-tools can not recognize.

I would suggest you also upgrade to latest kexec-tools, but this should
be not harmful since it is still using those ranges as reserved..

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
