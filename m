Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12DD1B7784
	for <lists+kexec@lfdr.de>; Fri, 24 Apr 2020 15:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Message-Id:Subject:Date:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HnUYTY8GRIj2YyCq24Hhl1Tsh5kT7KlGOSusjFvP0A4=; b=rksgNmHMhuUMHV
	oNze5lZSmJfMPscfNZ82uAdC0AXeSJ+d3SQBjGfGh40ovszF9Df14XFq/34sFudfddm+2JLO3XeC6
	yYpvWU6k+ODiHlrDSIrm+gCxC7ttQxEGDjg5ez3a9kxX1qODuGW5u+c3iwWZBHH9eSPPUvysdB0Hm
	lmwS/EdAI98FS6LKmzv4t0a8uC0sr6rw+mIN3Q8AQxOAOHAz0dWZhkDj+NgryuOJHKggJ/NLypNJO
	X7XD+I4poW4rXQlbdGfW+M2MoomFoMx+eBFoF9Tx4tnWwqr2M3d0uCb8i1E1hCsr1CiHpJGckrng/
	wM28EVEaVaSqqAi9tJxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyk1-0002ba-R3; Fri, 24 Apr 2020 13:51:41 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyjy-00080P-J4
 for kexec@lists.infradead.org; Fri, 24 Apr 2020 13:51:40 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03ODnYjD178219
 for <kexec@lists.infradead.org>; Fri, 24 Apr 2020 13:49:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : content-type :
 content-transfer-encoding : mime-version : date : subject : message-id :
 to; s=corp-2020-01-29; bh=LrxwqiLO9rqbd+xYphBwXE9/DGEPR7iN9T/l/kJr1CQ=;
 b=EDMcWr1PiHQQ5G9vb998ChiZKifcJQYEQecTjPg8fVzqJnpwSZtoMA+PUsBXI4nR+koT
 WbjTkH4pSufz2Lkx4QdyCXm4Szb5zWZvXdpqfPsRil3j69MgDkvqImMN3EFLKoz3y6BJ
 B7bovCBwo+T2riH5WPzezIQxoJ84a0zKOmrYdQrnbwhDXyz3jFMaPeAETyIL8Mfq4nXH
 g0mY04J5EVmJ0iHmGW836pyIjhRmygD2a7enTpF230NJ9S1TRRyqFZ4S1y1KwG7r3nZF
 VeUq5kaC1dGmauwC/KUlB+OHkThIy6T6nBCA2Ub/xGgxYmauXSaLbnQglLrsmQrrd8Bm Fw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30k7qe6xb2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Fri, 24 Apr 2020 13:49:34 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03ODfcrR155850
 for <kexec@lists.infradead.org>; Fri, 24 Apr 2020 13:49:34 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30k7qx6fse-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Fri, 24 Apr 2020 13:49:33 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03ODnXvE023630
 for <kexec@lists.infradead.org>; Fri, 24 Apr 2020 13:49:33 GMT
Received: from dhcp-10-154-132-192.vpn.oracle.com (/10.154.132.192)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 Apr 2020 06:49:33 -0700
From: John Donnelly <john.p.donnelly@oracle.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Fri, 24 Apr 2020 08:49:31 -0500
Subject: [crash - Question ] mod -s <module>   not working with compressed
 modules 
Message-Id: <4FA43F2A-C118-4102-BC03-19B55A5AFEA9@oracle.com>
To: kexec mailing list <kexec@lists.infradead.org>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9600
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 mlxlogscore=823
 adultscore=0 suspectscore=3 bulkscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004240110
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9600
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 lowpriorityscore=0
 priorityscore=1501 suspectscore=3 mlxlogscore=885 phishscore=0
 impostorscore=0 mlxscore=0 clxscore=1011 malwarescore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004240110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_065138_707612_412DF55F 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgCgogSSBvYnNlcnZlZCB0aGF0ICBsb2FkaW5nIG1vZHVsZSBzeW1ib2xzIGZyb20gYSBjb21w
cmVzc2VkIGtvLnh6ICAoIGNyYXNoIDcuMi4zLTEwLmVsNyApIGRvZXMgbm90IHdvcmssCmFuZCB0
aGUgZGVzaXJlZCBtb2R1bGUgaGFzIHRvIGJlIHVuLWNvbXByZXNzZWQgLiBEb2VzIGFueW9uZSBr
bm93IGlmIHRoZXJlIGlzIGEgcmVjZW50IHBhdGNoIHRoYXQgYWRkcmVzc2VzIHRoaXMgPwoKCkV4
YW1wbGU6CgpNb2R1bGVzIGFyZSBsb2NhdGVkIGF0IHRoZSDigJRtb2QgcGF0aCA6CgpjcmFzaCAg
IC1zICBgZmluZCBrZXJuZWwtdWVrLWRlYnVnaW5mby00LjE0LjM1LTE5MDIuMzAyLjEuMDEuZWw3
dWVrLnJjMSAtbmFtZSB2bWxpbnV4IGAgdm1jb3JlIC0tbW9kIC4va2VybmVsLXVlay00LjE0LjM1
LTE5MDIuMzAyLjEuMDEudHN0MTcwNTlfdTMuZWw3dWVrLnJjMS9saWIvbW9kdWxlcy80LjE0LjM1
LTE5MDIuMzAyLjEuMDEuZWw3dWVrLnJjMS54ODZfNjQva2VybmVsLwoKCmNyYXNoPiBtb2QgLVMK
bW9kOiBjYW5ub3QgZmluZCBvciBsb2FkIG9iamVjdCBmaWxlIGZvciB1c2Jfc3RvcmFnZSBtb2R1
bGUKbW9kOiBjYW5ub3QgZmluZCBvciBsb2FkIG9iamVjdCBmaWxlIGZvciBkY2EgbW9kdWxlCm1v
ZDogY2Fubm90IGZpbmQgb3IgbG9hZCBvYmplY3QgZmlsZSBmb3IgZmJfc3lzX2ZvcHMgbW9kdWxl
Cm1vZDogY2Fubm90IGZpbmQgb3IgbG9hZCBvYmplY3QgZmlsZSBmb3IgdWFzIG1vZHVsZQogICAg
IE1PRFVMRSAgICAgICBOQU1FICAgICAgICAgICAgICAgICAgICAgU0laRSAgT0JKRUNUIEZJTEUK
ZmZmZmZmZmZjMDc0MDBjMCAgcWxhMnh4eCAgICAgICAgICAgICAgICA3OTQ2MjQgIC4va2VybmVs
LXVlay00LjE0LjM1LTE5MDIuMzAyLjEuMDEuZWw3dWVrLnJjMS9saWIvbW9kdWxlcy80LjE0LjM1
LTE5MDIuMzAyLjEuMDEuZWw3dWVrLnJjMS54ODZfNjQva2VybmVsL2RyaXZlcnMvc2NzaS9xbGEy
eHh4L3FsYTJ4eHgua28gCgpJIHVuLWNvbXByZXNzZWQgcWxhMnh4eC5rby54eiAgc28gaXQgd2Fz
IGZvdW5kLiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
a2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
