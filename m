Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE73A6BA3
	for <lists+kexec@lfdr.de>; Tue,  3 Sep 2019 16:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVXK2zb4GbFujMHfkdvyXXSdNdwe1KWjeqD4QvYUGYg=; b=igwqWM41mmjKj2
	bUSijJE0zD92oxcE6BB9RpCNHVGMYuceUMncNtBUCnEAQ6HtAzEdnON/gErx/o9+LtQViZIvq9ITY
	MG72bu6/EBFOk6dEPCuQR4srNSiLaDXt/ldc9NbaILY4iLH5yn6oaX6hoCeZrslzDq3X4BhbXIGTb
	DXlbi/Q5k6lZT3h36qC52BXMHSbgJhp9DhroaZQKQPx04WmJg2dQHdcO2vVAni1JlsNvVVDVPoHqq
	EuEdOMmlz+6V05DnwQ9p54z2YHiLtI0zE3+1KcfD03v+EQYzfcs71/B1ol0FfkSdV/vR3hvYWi+CX
	Rq0k0uZCSkD8/rtNseAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59wE-0001g0-O0; Tue, 03 Sep 2019 14:37:42 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i59w9-0001Ut-GM
 for kexec@lists.infradead.org; Tue, 03 Sep 2019 14:37:39 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id DB8F025B71D;
 Wed,  4 Sep 2019 00:37:32 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id B5B2794055C; Tue,  3 Sep 2019 16:37:30 +0200 (CEST)
Date: Tue, 3 Sep 2019 16:37:30 +0200
From: Simon Horman <horms@verge.net.au>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 0/4 v2] Limit the size of vmcore-dmesg.txt to 2G
Message-ID: <20190903143730.lz45x774rhmefjzg@verge.net.au>
References: <20190823120539.18330-1-lijiang@redhat.com>
 <21c5b324-c3f5-4fb4-25da-e62610b2becd@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21c5b324-c3f5-4fb4-25da-e62610b2becd@redhat.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_073737_692876_E4622048 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
Cc: kasong@redhat.com, bhe@redhat.com, piliu@redhat.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, junw99@yahoo.com, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 05:18:58PM +0800, lijiang wrote:
> Hi, Simon and other reviewers, any comment about v2?

Hi,

sorry for the extended delay.
I will look over this.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
