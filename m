Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366FC1FCE2E
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 15:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ymWs6mSZXlSbfLGolEK8mS5O3K+Ta9r9QxLpMV7hedY=; b=MqEE5S8sXBICRQ
	nBmn5rYI+GyPmSFFXFNVKwxbZPNJ5Qb042rgCWZJOZGbo7A4rsfvpCkTpbsVrlNfWpYTSwl080Sey
	GGpN+mFlD5iiRXoVwc/7yvFoyc3gFhCYcEVmApUSN9J8j5F6II/dMzOz1LMM9CDVk9Z5+gtb7BWvP
	/dLaMZGd86l86c3zhiPNZVljLi0GRzE6/7hXgg+Q/b2/pDjnOciLM1S2d1XZvL2BnEJg3s8IVc4Cp
	mQhJ4X0yJ/QfM97OQJUJTA5lkTGwd8Bqy3B3xlJfRpIboyIocRyATZLLJWuT4JXF27Tf4jwHDkLWS
	qmfO6DiBFN+1qLaxM5fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXsB-0003sI-KT; Wed, 17 Jun 2020 13:12:59 +0000
Received: from rdns4.delivers-solutions.com ([147.135.99.24])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXs8-0003rr-Eo
 for kexec@lists.infradead.org; Wed, 17 Jun 2020 13:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=delivers-solutions.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=info@delivers-solutions.com; 
 bh=HfOzYHtXihvNe2PYgpNWZYop7xo=;
 b=Twf2RVtkl6PsV9hcD5NnyPw5fmXQMQjwuTj33d3kEnIDOzk8M2A4Qv2Rwg4uJYOGkNaQkkTga8jy
 RfhZV/4mFMswJ9TkxXScQy3dvn+Y/xl3ZFWU8wIjLMraaXMz6Rye3DsE+FwthlAmlhLZc5mpra3k
 ppRC1thKlhyyCF5gw+M=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=delivers-solutions.com; 
 b=Axw02O41iA+jbckTe9ltL0I4++qduIXwBMjEpXEd4DNm7Fak+TcGSEMCBynizKKeTpINx28JNx6V
 B2DX/gXWsF9lsHHjDbGDEW/pQ3gm7fA7jjvB3Zxa+B+jrSHtGw7tSXTw0mZ+Nb9+5uFIoxSwVS0e
 ALXQSTvvUO3zLn7ZKUc=;
From: info@delivers-solutions.com
To: kexec@lists.infradead.org
Subject: Receipt For Goods Available
Date: 17 Jun 2020 15:12:52 +0200
Message-ID: <20200617151252.F560DECF5A1FBABE@delivers-solutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_061256_495730_92F43546 
X-CRM114-Status: UNSURE (   0.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: info@cocyflame.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi

Hope this mail finds you well.

Our company have not bought your products before but due to 
excess demand of it here, so we decided to go for it.

I still have other request to make but there all in my 
specification.

Please let me know if you still have stocks available.


Waiting for your reply

 



Warmest Regards,

Angela Wilpert

Sales Executives Dept

HDT Sales & Merkating
vasileos konstantinou 89 Paphos, Paphos, Cyprus
Phone: +357 26 040001


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
