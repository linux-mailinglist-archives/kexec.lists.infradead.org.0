Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FEA6A7AC
	for <lists+kexec@lfdr.de>; Tue, 16 Jul 2019 13:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBw8ltnbVQ8ukXb9LbCrmlUc179VgQPSvTah8MjNlZ4=; b=N+9vWxoHk+2re6
	2Kkdms0BGq1XOSbm2dmB6aVhSxS7y97jRsOBIYblsUx+YPJtXeiivWMKaQCscKLfaeFgEpbWfPHh4
	OpdImf2wm96YtwunZO5BmYqxh8p6f2sK8d3F1EB0QtTbMzSP5Tqb64UBbT8sELzPhKlYT/LMYdqhf
	NcKArkf1g+KZSoiwLfPxYTJDvku8F+mxJSdohbkNBNS8hRQRqiQ5gOlqHSHwPL7JbAbvSnPVZXEmp
	akR43rqoAp4RwrBrUwWEFnv8UEldzhmAjlm+fm/IW49T3V0ve14MRAycjTHUSlYsKHD5SpyNIvPZb
	LSZ2hTOPYyKryqhaVl5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLxy-0007Yv-J7; Tue, 16 Jul 2019 11:49:54 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLxq-0007YP-4e
 for kexec@lists.infradead.org; Tue, 16 Jul 2019 11:49:47 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id F2DDD25AD78;
 Tue, 16 Jul 2019 21:49:44 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 026D59403C0; Tue, 16 Jul 2019 13:49:42 +0200 (CEST)
Date: Tue, 16 Jul 2019 13:49:42 +0200
From: Simon Horman <horms@verge.net.au>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v2 0/4] kexec/arm64: Add support for zlib compressed
 kernel images (Image.gz)
Message-ID: <20190716114942.7ufsup2eyco4pxax@verge.net.au>
References: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_044946_331184_54D06D14 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: takahiro.akashi@linaro.org, bhupesh.linux@gmail.com,
 kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 11:32:52AM +0530, Bhupesh Sharma wrote:
> Changes since v1:
> ----------------
> (v1 can be viewed here: http://lists.infradead.org/pipermail/kexec/2019-July/023288.html)
>  - Fixed the potential file descriptor leakage code legs pointed out by
>    Simon.
>  - Ran Valgrind to make sure no potential memory leakage issues are
>    introduced by this patchset.
> 
> This patchset adds the support for zlib compressed kernel images
> (Image.gz) for arm64 kexec-tools.
> 
> This was discussed a bit with the arm64 kernel maintainers (see [0]) and
> after discussing the pros and cons of adding this support in
> kernel-space v/s in user-space, we decided it makes more sense to add
> this support to the user-space kexec-tools.
> 
> Note that this series adds support for unsigned arm64 Image.gz files
> only as signing an Image.gz type file is not a easy implementation from
> kexec-tools p-o-v. Also even standard signing tools like sbsign fail to
> recongize the Image.gz format:
> 
>  $ sbsign --key certs/signing_key.pem  --cert certs/signing_key.pem Image.gz
>    Invalid DOS header magic
> 
> ... because that gzip file isn't a PE32+ that can be loaded by UEFI.
> So I will work on the same in coming days and try to send a RFC
> patchset for the same later on.
> 
> [0]. http://lists.infradead.org/pipermail/kexec/2019-June/023156.html

Thanks, applied for inclusion in v2.0.20.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
